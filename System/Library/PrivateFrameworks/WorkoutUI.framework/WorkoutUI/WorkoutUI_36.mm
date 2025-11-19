uint64_t _s9WorkoutUI20SessionControlsSheetVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s9WorkoutUI20SessionControlsSheetVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_4(uint64_t a1)
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

uint64_t partial apply for closure #1 in MirrorViewMonitor.receivedMirroredHostMachTimestampRequest(_:closure:)(int a1, void *a2)
{
  v5 = *(type metadata accessor for MirroredHostMachTimestampRequest() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return closure #1 in MirrorViewMonitor.receivedMirroredHostMachTimestampRequest(_:closure:)(a1, a2, v7, v6);
}

uint64_t partial apply for closure #1 in MirrorViewMonitor.receivedMirroredHostCountdownStart(_:closure:)()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return closure #1 in MirrorViewMonitor.receivedMirroredHostCountdownStart(_:closure:)(v5, v2, v3, v4, v6);
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<MapHostingMirrorView, SessionView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<MapHostingMirrorView, SessionView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<MapHostingMirrorView, SessionView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB020MapHostingMirrorViewVAD07SessionI0VGMd);
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MapHostingMirrorView and conformance MapHostingMirrorView, 255, type metadata accessor for MapHostingMirrorView);
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionView and conformance SessionView, 255, type metadata accessor for SessionView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<MapHostingMirrorView, SessionView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of DataLinkMirroredClientExpectation?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_3(unint64_t *a1, uint64_t *a2)
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

uint64_t objectdestroy_18Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 24) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #2 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:);

  return closure #1 in closure #2 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #2 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t FlightsClimbedMetricView.init(flightsClimbed:formattingManager:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  return result;
}

void FlightsClimbedMetricView.body.getter(uint64_t a1@<X8>)
{
  v26 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v25 = *v1;
  v14 = v25;
  v27 = v25;
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  FloatingPointFormatStyle.init(locale:)();
  v15 = v26;
  (*(v3 + 104))(v5, *MEMORY[0x277D84688], v26);
  MEMORY[0x20F3024B0](v5, 0, 1, v7);
  (*(v3 + 8))(v5, v15);
  v16 = *(v8 + 8);
  v16(v10, v7);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
  BinaryFloatingPoint.formatted<A>(_:)();
  v16(v13, v7);
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v14 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v14 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v17 = v28;
  v18 = v29;
  v19 = MEMORY[0x20F30D2E0](v14);
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  *a1 = v17;
  *(a1 + 8) = v18;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v21;
  *(a1 + 40) = v23;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
}

unint64_t lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>()
{
  result = lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>;
  if (!lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlightsClimbedMetricView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FlightsClimbedMetricView(uint64_t result, int a2, int a3)
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

uint64_t RaceElevationMetricView.init(racePosition:positionOnRoute:ghostPositionOnRoute:chartProperties:formattingManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = type metadata accessor for RaceElevationMetricView();
  v13 = a4 + v12[9];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v12[10];
  if (one-time initialization token for iconWidth != -1)
  {
    swift_once();
  }

  *(a4 + v14) = *&static RacePlatterConstants.iconWidth * 0.5;
  *(a4 + v12[11]) = 0x4014000000000000;
  v15 = type metadata accessor for RacePosition();
  result = (*(*(v15 - 8) + 32))(a4, a1, v15);
  *(a4 + v12[5]) = a5;
  *(a4 + v12[7]) = a6;
  *(a4 + v12[8]) = a2;
  *(a4 + v12[6]) = a3;
  return result;
}

uint64_t type metadata accessor for RaceElevationMetricView()
{
  result = type metadata singleton initialization cache for RaceElevationMetricView;
  if (!type metadata singleton initialization cache for RaceElevationMetricView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RaceElevationMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v171 = a1;
  v170 = type metadata accessor for EnvironmentValues();
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v168 = v150 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts9ScaleTypeVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v185 = v150 - v5;
  v6 = type metadata accessor for RacePosition();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v178 = v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v177 = v150 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = (v150 - v12);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts5ChartVyAA18BuilderConditionalVyAEyAEyAA0C5TupleVyAA0B7ContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeS0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineS0yQrAL06StrokeS0VFQOyAA04LineV0V_Qo__AZQo_QPGGG_AA09RectangleV0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleV0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0pV0V_AL08ModifiedF0VyAL04FillT4ViewVyAL6CircleVAzL0yT4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundS8ModifierVyAZGGQo_QPGQPGGAEyAGyA12__A16_AGyA16__A60_QPGQPGAGyA12__AiAEA25_yQrSdFQOyA12__Qo_A16_QPGGGA12_GGMd);
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v15 = v150 - v14;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP6ChartsE10chartYAxisyQrAA10VisibilityOFQOyAD5ChartVyAD18BuilderConditionalVyAKyAKyAD0I5TupleVyAD0H7ContentPADE4mask7contentQrqd__yXE_tAdNRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceH5PointVGSiAD4PlotVyAMyAoDE15foregroundStyleyQrqd__AA05ShapeW0Rd__lFQOyAD8AreaMarkV_AA5ColorVQo__AoDEAZyQrqd__AAA_Rd__lFQOyAoDE04lineW0yQrAA06StrokeW0VFQOyAD04LineZ0V_Qo__A3_Qo_QPGGG_AD09RectangleZ0VQo__AoDEA5_yQrA7_FQOyAoDEAZyQrqd__AAA_Rd__lFQOyAD04RuleZ0V_A3_Qo__Qo_QPGAMyA17__AoDEAZyQrqd__AAA_Rd__lFQOyASyAWSiAYyAMyA1__A10_QPGGG_AA14LinearGradientVQo_ASySaySdGSdAoDE7opacityyQrSdFQOyA21__Qo_GSgA21_AMyA21__AoDE10annotation8position9alignment7spacingAQQrAD18AnnotationPositionV_AA9AlignmentV0R8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAoDE6symbolA46_Qrqd__yXE_tAaBRd__lFQOyAD0tZ0V_AA08ModifiedL0VyAA04FillxC0VyAA6CircleVA3_AA06StrokexC0VyA54_A3_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A50_yAA5ImageVAA011_ForegroundW8ModifierVyA3_GGQo_QPGQPGGAKyAMyA17__A21_AMyA21__A64_QPGQPGAMyA17__AoDEA30_yQrSdFQOyA17__Qo_A21_QPGGGA17_GG_Qo_Md);
  v175 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v17 = v150 - v16;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP6ChartsE11chartYScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0I6DomainRd__lFQOyAcDE0E5YAxisyQrAA10VisibilityOFQOyAD5ChartVyAD18BuilderConditionalVyARyARyAD0O5TupleVyAD0N7ContentPADE4mask7contentQrqd__yXE_tAdURd__lFQOyAA7ForEachVySay11WorkoutCore04RaceN5PointVGSiAD4PlotVyATyAvDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA5ColorVQo__AvDEA5_yQrqd__AAA6_Rd__lFQOyAvDE9lineStyleyQrAA11StrokeStyleVFQOyAD8LineMarkV_Qo__A10_Qo_QPGGG_AD13RectangleMarkVQo__AvDEA12_yQrA14_FQOyAvDEA5_yQrqd__AAA6_Rd__lFQOyAD8RuleMarkV_A10_Qo__Qo_QPGATyA24__AvDEA5_yQrqd__AAA6_Rd__lFQOyAZyA2_SiA4_yATyA8__A17_QPGGG_AA14LinearGradientVQo_AZySaySdGSdAvDE7opacityyQrSdFQOyA28__Qo_GSgA28_ATyA28__AvDE10annotation8position9alignment7spacingAXQrAD18AnnotationPositionV_AA9AlignmentV0X8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAvDE6symbolA53_Qrqd__yXE_tAaBRd__lFQOyAD0Z4MarkV_AA08ModifiedR0VyAA09FillShapeC0VyAA6CircleVA10_AA011StrokeShapeC0VyA61_A10_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A57_yAA5ImageVAA24_ForegroundStyleModifierVyA10_GGQo_QPGQPGGARyATyA24__A28_ATyA28__A71_QPGQPGATyA24__AvDEA37_yQrSdFQOyA24__Qo_A28_QPGGGA24_GG_Qo__SNySdGQo_Md);
  v176 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v173 = v150 - v18;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP6ChartsE10chartXAxisyQrAA10VisibilityOFQOyAcDE0E6YScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0K6DomainRd__lFQOyAcDE0E5YAxisyQrAGFQOyAD5ChartVyAD18BuilderConditionalVyASyASyAD0P5TupleVyAD0O7ContentPADE4mask7contentQrqd__yXE_tAdVRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceO5PointVGSiAD4PlotVyAUyAwDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA5ColorVQo__AwDEA6_yQrqd__AAA7_Rd__lFQOyAwDE9lineStyleyQrAA11StrokeStyleVFQOyAD8LineMarkV_Qo__A11_Qo_QPGGG_AD13RectangleMarkVQo__AwDEA13_yQrA15_FQOyAwDEA6_yQrqd__AAA7_Rd__lFQOyAD8RuleMarkV_A11_Qo__Qo_QPGAUyA25__AwDEA6_yQrqd__AAA7_Rd__lFQOyA_yA3_SiA5_yAUyA9__A18_QPGGG_AA14LinearGradientVQo_A_ySaySdGSdAwDE7opacityyQrSdFQOyA29__Qo_GSgA29_AUyA29__AwDE10annotation8position9alignment7spacingAYQrAD18AnnotationPositionV_AA9AlignmentV0Y8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAwDE6symbolA54_Qrqd__yXE_tAaBRd__lFQOyAD9PointMarkV_AA08ModifiedS0VyAA09FillShapeC0VyAA6CircleVA11_AA011StrokeShapeC0VyA62_A11_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A58_yAA5ImageVAA24_ForegroundStyleModifierVyA11_GGQo_QPGQPGGASyAUyA25__A29_AUyA29__A72_QPGQPGAUyA25__AwDEA38_yQrSdFQOyA25__Qo_A29_QPGGGA25_GG_Qo__SNySdGQo__Qo_Md);
  v151 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v183 = v150 - v19;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP6ChartsE11chartXScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0I6DomainRd__lFQOyAcDE0E5XAxisyQrAA10VisibilityOFQOyAcDE0E6YScaleAfGQrqd___AJtAdKRd__lFQOyAcDE0E5YAxisyQrANFQOyAD5ChartVyAD18BuilderConditionalVyATyATyAD0Q5TupleVyAD0P7ContentPADE4mask7contentQrqd__yXE_tAdWRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceP5PointVGSiAD4PlotVyAVyAxDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA5ColorVQo__AxDEA7_yQrqd__AAA8_Rd__lFQOyAxDE9lineStyleyQrAA11StrokeStyleVFQOyAD8LineMarkV_Qo__A12_Qo_QPGGG_AD13RectangleMarkVQo__AxDEA14_yQrA16_FQOyAxDEA7_yQrqd__AAA8_Rd__lFQOyAD8RuleMarkV_A12_Qo__Qo_QPGAVyA26__AxDEA7_yQrqd__AAA8_Rd__lFQOyA0_yA4_SiA6_yAVyA10__A19_QPGGG_AA14LinearGradientVQo_A0_ySaySdGSdAxDE7opacityyQrSdFQOyA30__Qo_GSgA30_AVyA30__AxDE10annotation8position9alignment7spacingAZQrAD18AnnotationPositionV_AA9AlignmentV0Z8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAxDE6symbolA55_Qrqd__yXE_tAaBRd__lFQOyAD9PointMarkV_AA08ModifiedT0VyAA09FillShapeC0VyAA6CircleVA12_AA011StrokeShapeC0VyA63_A12_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A59_yAA5ImageVAA24_ForegroundStyleModifierVyA12_GGQo_QPGQPGGATyAVyA26__A30_AVyA30__A73_QPGQPGAVyA26__AxDEA39_yQrSdFQOyA26__Qo_A30_QPGGGA26_GG_Qo__SNySdGQo__Qo__A93_Qo_Md);
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v154 = v150 - v20;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGMd);
  MEMORY[0x28223BE20](v152);
  v22 = v150 - v21;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GMd);
  MEMORY[0x28223BE20](v158);
  v161 = v150 - v23;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GMd);
  MEMORY[0x28223BE20](v160);
  v163 = v150 - v24;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GA98_GMd);
  MEMORY[0x28223BE20](v162);
  v166 = v150 - v25;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GA98_GA98_GMd);
  MEMORY[0x28223BE20](v164);
  v27 = v150 - v26;
  v28 = type metadata accessor for RaceElevationMetricView();
  v29 = v28[7];
  v30 = *(v2 + v28[8]);
  v31 = v28[5];
  v32 = *(v2 + v31);
  v33 = *(v2 + v29);
  if (v32 > v33)
  {
    v34 = *(v2 + v31);
  }

  else
  {
    v34 = *(v2 + v29);
  }

  if (v33 >= v32)
  {
    v35 = *(v2 + v31);
  }

  else
  {
    v35 = *(v2 + v29);
  }

  v36 = *(v7 + 16);
  v172 = v7 + 16;
  *&v189 = v36;
  v36(v13, v2, v6);
  v37 = *(v7 + 88);
  v188 = v7 + 88;
  v187 = v37;
  v38 = v37(v13, v6);
  v186 = *MEMORY[0x277D7DF68];
  v167 = v27;
  v159 = v22;
  v157 = v28;
  v180 = v6;
  v179 = v7;
  if (v38 == v186)
  {
    (*(v7 + 96))(v13, v6);
    v39 = v2;
    if (*v13 >= 0.0)
    {
      v40 = 72;
    }

    else
    {
      v40 = 80;
    }
  }

  else
  {
    v39 = v2;
    (*(v7 + 8))(v13, v6);
    v40 = 80;
  }

  v41 = *(v30 + v40);

  RaceElevationChartProperties.performanceGradientFor(userPosition:ghostPosition:)(v194, v32, v33);
  v42 = RaceElevationChartProperties.chartDomainFor(userOdometer:ghostOdometer:)(v32, v33);
  v43 = *(v30 + 32);
  v44 = *(v30 + 40);
  specialized static RaceWorkoutConfiguration.pointOuterColorFor(_:)(v39);
  v45 = Color.init(uiColor:)();
  v165 = v150;
  MEMORY[0x28223BE20](v45);
  v150[-14] = v39;
  v150[-13] = v30;
  v150[-12] = v43;
  v150[-11] = v44;
  *&v150[-10] = v32;
  *&v150[-9] = v42;
  v150[-7] = v35;
  v150[-6] = v34;
  *&v150[-5] = v33;
  v150[-4] = v194;
  v150[-3] = v41;
  v150[-2] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalVyACyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_QPGAEyA10__AgAEASyQrqd__AjTRd__lFQOyALyAPSiARyAEyAV_A3_QPGGG_AJ14LinearGradientVQo_ALySaySdGSdAgAE7opacityyQrSdFQOyA14__Qo_GSgA14_AEyA14__AgAE10annotation8position9alignment7spacingAIQrAA18AnnotationPositionV_AJ9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAJ4ViewRd__lFQOyAgAE6symbolA40_Qrqd__yXE_tAJA39_Rd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA48_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo__A44_yAJ5ImageVAJ011_ForegroundS8ModifierVyAXGGQo_QPGQPGGACyAEyA10__A14_AEyA14__A58_QPGQPGAEyA10__AgAEA23_yQrSdFQOyA10__Qo_A14_QPGGGA10_GMd);
  lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type ();
  Chart.init(content:)();
  outlined destroy of LinearGradient(v194);

  v47 = lazy protocol witness table accessor for type Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>> and conformance Plot<A>(&lazy protocol witness table cache variable for type Chart<BuilderConditional<BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque , &_s6Charts5ChartVyAA18BuilderConditionalVyAEyAEyAA0C5TupleVyAA0B7ContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeS0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineS0yQrAL06StrokeS0VFQOyAA04LineV0V_Qo__AZQo_QPGGG_AA09RectangleV0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleV0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0pV0V_AL08ModifiedF0VyAL04FillT4ViewVyAL6CircleVAzL0yT4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundS8ModifierVyAZGGQo_QPGQPGGAEyAGyA12__A16_AGyA16__A60_QPGQPGAGyA12__AiAEA25_yQrSdFQOyA12__Qo_A16_QPGGGA12_GGMd);
  LOBYTE(v48) = v17;
  v49 = v182;
  View.chartYAxis(_:)();
  (*(v181 + 8))(v15, v49);
  v50 = *(v30 + 56);
  if (*(v30 + 48) > v50)
  {
    __break(1u);
  }

  else
  {
    v192 = *(v30 + 48);
    v193 = v50;
    v51 = type metadata accessor for ScaleType();
    v52 = *(v51 - 8);
    v53 = v17;
    v54 = v185;
    v181 = *(v52 + 56);
    v150[1] = v52 + 56;
    (v181)(v185, 1, 1, v51);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySdGMd);
    *&v195 = v49;
    *(&v195 + 1) = v47;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v57 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v58 = v173;
    v59 = v174;
    View.chartYScale<A>(domain:type:)();
    outlined destroy of ScaleType?(v54);
    (*(v175 + 8))(v53, v59);
    *&v195 = v59;
    *(&v195 + 1) = v55;
    *&v196 = OpaqueTypeConformance2;
    *(&v196 + 1) = v57;
    v48 = swift_getOpaqueTypeConformance2();
    v60 = v184;
    View.chartXAxis(_:)();
    (*(v176 + 8))(v58, v60);
    v61 = v177;
    v62 = v180;
    (v189)(v177, v39, v180);
    v63 = v187(v61, v62);
    v49 = v39;
    if (v63 == v186)
    {
      v66 = RaceElevationChartProperties.chartDomainFor(userOdometer:ghostOdometer:)(v32, v33);
      v65.n128_f64[0] = v66.end;
      v64.n128_f64[0] = v66.start;
      start = v66.start;
      v39 = v179;
    }

    else
    {
      start = *(v30 + 32);
      v39 = v179;
      v64.n128_f64[0] = (*(v179 + 8))(v61, v62);
    }

    v68 = v178;
    (v189)(v178, v49, v62, v64, v65);
    v69 = v187(v68, v62);
    if (v69 == v186)
    {
      v71 = RaceElevationChartProperties.chartDomainFor(userOdometer:ghostOdometer:)(v32, v33);
      v70.n128_f64[0] = v71.start;
      end = v71.end;
    }

    else
    {
      end = *(v30 + 40);
      v73 = *(v39 + 8);
      v39 += 8;
      v73(v68, v62);
    }

    if (start <= end)
    {
      v190 = start;
      v191 = end;
      v74 = v185;
      (v181)(v185, 1, 1, v51, v70);
      *&v195 = v184;
      *(&v195 + 1) = v48;
      swift_getOpaqueTypeConformance2();
      v39 = v154;
      v48 = v153;
      v75 = v183;
      View.chartXScale<A>(domain:type:)();
      outlined destroy of ScaleType?(v74);
      (*(v151 + 8))(v75, v48);
      LOBYTE(v48) = static Edge.Set.top.getter();
      if (one-time initialization token for iconHeight == -1)
      {
        goto LABEL_21;
      }

      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_44:
  swift_once();
LABEL_21:
  EdgeInsets.init(_all:)();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = v159;
  (*(v155 + 32))(v159, v39, v156);
  v85 = v84 + *(v152 + 36);
  *v85 = v48;
  *(v85 + 8) = v77;
  *(v85 + 16) = v79;
  *(v85 + 24) = v81;
  *(v85 + 32) = v83;
  *(v85 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  inited = swift_initStackObject();
  v189 = xmmword_20CB5DA80;
  *(inited + 16) = xmmword_20CB5DA80;
  v87 = static Edge.Set.leading.getter();
  *(inited + 32) = v87;
  v88 = static Edge.Set.trailing.getter();
  *(inited + 33) = v88;
  v89 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  v90 = Edge.Set.init(rawValue:)();
  v91 = v157;
  if (v90 != v87)
  {
    v89 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v88)
  {
    v89 = Edge.Set.init(rawValue:)();
  }

  v92 = v49 + v91[9];
  v93 = *v92;
  if ((*(v92 + 8) & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v94 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v95 = v168;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v93, 0);
    (*(v169 + 8))(v95, v170);
  }

  v96 = v167;
  EdgeInsets.init(_all:)();
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v105 = v161;
  outlined init with take of ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>(v84, v161, &_s7SwiftUI15ModifiedContentVyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGMd);
  v106 = v105 + *(v158 + 36);
  *v106 = v89;
  *(v106 + 8) = v98;
  *(v106 + 16) = v100;
  *(v106 + 24) = v102;
  *(v106 + 32) = v104;
  *(v106 + 40) = 0;
  v107 = *v92;
  if (*(v92 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v108 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v109 = v168;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v107, 0);
    (*(v169 + 8))(v109, v170);
    LOBYTE(v107) = v195;
  }

  if (v107 <= 9u && ((1 << v107) & 0x301) != 0 && one-time initialization token for graphContentHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v110 = v163;
  outlined init with take of ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>(v105, v163, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GMd);
  v111 = (v110 + *(v160 + 36));
  v112 = v196;
  *v111 = v195;
  v111[1] = v112;
  v111[2] = v197;
  v113 = static Edge.Set.top.getter();
  if (one-time initialization token for graphTopPadding != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  v122 = v110;
  v123 = v166;
  outlined init with take of ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>(v122, v166, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GMd);
  v124 = v123 + *(v162 + 36);
  *v124 = v113;
  *(v124 + 8) = v115;
  *(v124 + 16) = v117;
  *(v124 + 24) = v119;
  *(v124 + 32) = v121;
  *(v124 + 40) = 0;
  v125 = static Edge.Set.bottom.getter();
  if (one-time initialization token for graphBottomPadding != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  outlined init with take of ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>(v123, v96, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GA98_GMd);
  v134 = v96 + *(v164 + 36);
  *v134 = v125;
  *(v134 + 8) = v127;
  *(v134 + 16) = v129;
  *(v134 + 24) = v131;
  *(v134 + 32) = v133;
  *(v134 + 40) = 0;
  v135 = swift_initStackObject();
  *(v135 + 16) = v189;
  v136 = static Edge.Set.leading.getter();
  *(v135 + 32) = v136;
  v137 = static Edge.Set.trailing.getter();
  *(v135 + 33) = v137;
  v138 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v136)
  {
    v138 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v137)
  {
    v138 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v140 = v139;
  v142 = v141;
  v144 = v143;
  v146 = v145;
  v147 = v171;
  outlined init with take of ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>(v96, v171, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GA98_GA98_GMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GA98_GA98_GA98_GMd);
  v149 = v147 + *(result + 36);
  *v149 = v138;
  *(v149 + 8) = v140;
  *(v149 + 16) = v142;
  *(v149 + 24) = v144;
  *(v149 + 32) = v146;
  *(v149 + 40) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type ()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts18BuilderConditionalVyACyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_QPGAEyA10__AgAEASyQrqd__AjTRd__lFQOyALyAPSiARyAEyAV_A3_QPGGG_AJ14LinearGradientVQo_ALySaySdGSdAgAE7opacityyQrSdFQOyA14__Qo_GSgA14_AEyA14__AgAE10annotation8position9alignment7spacingAIQrAA18AnnotationPositionV_AJ9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAJ4ViewRd__lFQOyAgAE6symbolA40_Qrqd__yXE_tAJA39_Rd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA48_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo__A44_yAJ5ImageVAJ011_ForegroundS8ModifierVyAXGGQo_QPGQPGGACyAEyA10__A14_AEyA14__A58_QPGQPGAEyA10__AgAEA23_yQrSdFQOyA10__Qo_A14_QPGGGA10_GMd);
    lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mas();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH0H7ContentPAHE15foregroundStyleyQrqd__AA05ShapeP0Rd__lFQOyAH8AreaMarkV_AA5ColorVQo__AnHEAOyQrqd__AaPRd__lFQOyAnHE04lineP0yQrAA06StrokeP0VFQOyAH04LineS0V_Qo__ATQo_QPGGGMd);
    type metadata accessor for RectangleMark();
    lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mas()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartConte;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartConte)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts18BuilderConditionalVyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_QPGAEyA10__AgAEASyQrqd__AjTRd__lFQOyALyAPSiARyAEyAV_A3_QPGGG_AJ14LinearGradientVQo_ALySaySdGSdAgAE7opacityyQrSdFQOyA14__Qo_GSgA14_AEyA14__AgAE10annotation8position9alignment7spacingAIQrAA18AnnotationPositionV_AJ9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAJ4ViewRd__lFQOyAgAE6symbolA40_Qrqd__yXE_tAJA39_Rd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA48_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo__A44_yAJ5ImageVAJ011_ForegroundS8ModifierVyAXGGQo_QPGQPGGACyAEyA10__A14_AEyA14__A58_QPGQPGAEyA10__AgAEA23_yQrSdFQOyA10__Qo_A14_QPGGGMd);
    lazy protocol witness table accessor for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>> and conformance <> BuilderConditional<A, B>();
    lazy protocol witness table accessor for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>> and conformance <> BuilderConditional<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartConte);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>> and conformance <> BuilderConditional<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts18BuilderConditionalVyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_QPGAEyA10__AgAEASyQrqd__AjTRd__lFQOyALyAPSiARyAEyAV_A3_QPGGG_AJ14LinearGradientVQo_ALySaySdGSdAgAE7opacityyQrSdFQOyA14__Qo_GSgA14_AEyA14__AgAE10annotation8position9alignment7spacingAIQrAA18AnnotationPositionV_AJ9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAJ4ViewRd__lFQOyAgAE6symbolA40_Qrqd__yXE_tAJA39_Rd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA48_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo__A44_yAJ5ImageVAJ011_ForegroundS8ModifierVyAXGGQo_QPGQPGGMd);
    lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
    lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo_QPGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH0H7ContentPAHE15foregroundStyleyQrqd__AA05ShapeP0Rd__lFQOyAH8AreaMarkV_AA5ColorVQo__AnHEAOyQrqd__AaPRd__lFQOyAnHE04lineP0yQrAA06StrokeP0VFQOyAH04LineS0V_Qo__ATQo_QPGGGMd);
    type metadata accessor for RectangleMark();
    lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_Md);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAEAQyQrqd__AhRRd__lFQOyAJyANSiAPyACyAT_A1_QPGGG_AH14LinearGradientVQo_AJySaySdGSdAeAE7opacityyQrSdFQOyAeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo__Qo_GSgA20_ACyA20__AeAE10annotation8position9alignment7spacingAGQrAA18AnnotationPositionV_AH9AlignmentV0M8Graphics7CGFloatVSgqd__yXEtAH4ViewRd__lFQOyAeAE6symbolA37_Qrqd__yXE_tAHA36_Rd__lFQOyAA0oU0V_AH08ModifiedE0VyAH04FillS4ViewVyAH6CircleVAvH0xS4ViewVyA45_AvH9EmptyViewVGGAH12_FrameLayoutVGQo__A41_yAH5ImageVAH011_ForegroundR8ModifierVyAVGGQo_QPGQPGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH0H7ContentPAHE15foregroundStyleyQrqd__AA05ShapeP0Rd__lFQOyAH8AreaMarkV_AA5ColorVQo__AnHEAOyQrqd__AaPRd__lFQOyAnHE04lineP0yQrAA06StrokeP0VFQOyAH04LineS0V_Qo__ATQo_QPGGGMd);
    type metadata accessor for RectangleMark();
    lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH8AreaMarkV_AH0H7ContentPAHE9lineStyleyQrAA06StrokeR0VFQOyAH04LineO0V_Qo_QPGGGMd);
    lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>? and conformance <A> A?();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_Md);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>> and conformance <> BuilderConditional<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts18BuilderConditionalVyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_AEyA14__AgAE6symbolA15_Qrqd__yXE_tAJ4ViewRd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA24_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo_QPGQPGAEyA10__AgAE7opacityyQrSdFQOyA10__Qo_A14_QPGGMd);
    lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
    lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo_ACyA12__AeAE6symbolA13_Qrqd__yXE_tAH4ViewRd__lFQOyAA0oU0V_AH08ModifiedE0VyAH04FillS4ViewVyAH6CircleVAvH0xS4ViewVyA22_AvH9EmptyViewVGGAH12_FrameLayoutVGQo_QPGQPGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH0H7ContentPAHE15foregroundStyleyQrqd__AA05ShapeP0Rd__lFQOyAH8AreaMarkV_AA5ColorVQo__AnHEAOyQrqd__AaPRd__lFQOyAnHE04lineP0yQrAA06StrokeP0VFQOyAH04LineS0V_Qo__ATQo_QPGGGMd);
    type metadata accessor for RectangleMark();
    lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_Md);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAE7opacityyQrSdFQOyA8__Qo_AeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo_QPGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH0H7ContentPAHE15foregroundStyleyQrqd__AA05ShapeP0Rd__lFQOyAH8AreaMarkV_AA5ColorVQo__AnHEAOyQrqd__AaPRd__lFQOyAnHE04lineP0yQrAA06StrokeP0VFQOyAH04LineS0V_Qo__ATQo_QPGGGMd);
    type metadata accessor for RectangleMark();
    lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE4mask7contentQrqd__yXE_tAaBRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA12BuilderTupleVyAcAE15foregroundStyleyQrqd__AF05ShapeR0Rd__lFQOyAA8AreaMarkV_AF5ColorVQo__AcAEAQyQrqd__AfRRd__lFQOyAcAE04lineR0yQrAF06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo_Md);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_Md);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>> and conformance Plot<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined destroy of ScaleType?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts9ScaleTypeVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata completion function for RaceElevationMetricView()
{
  type metadata accessor for RacePosition();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FIUIFormattingManager();
    if (v1 <= 0x3F)
    {
      type metadata accessor for RaceElevationChartProperties();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Environment<WorkoutViewStyle>();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Environment<WorkoutViewStyle>()
{
  if (!lazy cache variable for type metadata for Environment<WorkoutViewStyle>)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<WorkoutViewStyle>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewP6ChartsE10chartXAxisyQrAA10VisibilityOFQOyAcDE0E6YScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0K6DomainRd__lFQOyAcDE0E5YAxisyQrAGFQOyAD5ChartVyAD18BuilderConditionalVyASyASyAD0P5TupleVyAD0O7ContentPADE4mask7contentQrqd__yXE_tAdVRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceO5PointVGSiAD4PlotVyAUyAwDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA5ColorVQo__AwDEA6_yQrqd__AAA7_Rd__lFQOyAwDE9lineStyleyQrAA11StrokeStyleVFQOyAD8LineMarkV_Qo__A11_Qo_QPGGG_AD13RectangleMarkVQo__AwDEA13_yQrA15_FQOyAwDEA6_yQrqd__AAA7_Rd__lFQOyAD8RuleMarkV_A11_Qo__Qo_QPGAUyA25__AwDEA6_yQrqd__AAA7_Rd__lFQOyA_yA3_SiA5_yAUyA9__A18_QPGGG_AA14LinearGradientVQo_A_ySaySdGSdAwDE7opacityyQrSdFQOyA29__Qo_GSgA29_AUyA29__AwDE10annotation8position9alignment7spacingAYQrAD18AnnotationPositionV_AA9AlignmentV0Y8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAwDE6symbolA54_Qrqd__yXE_tAaBRd__lFQOyAD9PointMarkV_AA08ModifiedS0VyAA09FillShapeC0VyAA6CircleVA11_AA011StrokeShapeC0VyA62_A11_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A58_yAA5ImageVAA24_ForegroundStyleModifierVyA11_GGQo_QPGQPGGASyAUyA25__A29_AUyA29__A72_QPGQPGAUyA25__AwDEA38_yQrSdFQOyA25__Qo_A29_QPGGGA25_GG_Qo__SNySdGQo__Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNySdGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewP6ChartsE11chartYScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0I6DomainRd__lFQOyAcDE0E5YAxisyQrAA10VisibilityOFQOyAD5ChartVyAD18BuilderConditionalVyARyARyAD0O5TupleVyAD0N7ContentPADE4mask7contentQrqd__yXE_tAdURd__lFQOyAA7ForEachVySay11WorkoutCore04RaceN5PointVGSiAD4PlotVyATyAvDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA5ColorVQo__AvDEA5_yQrqd__AAA6_Rd__lFQOyAvDE9lineStyleyQrAA11StrokeStyleVFQOyAD8LineMarkV_Qo__A10_Qo_QPGGG_AD13RectangleMarkVQo__AvDEA12_yQrA14_FQOyAvDEA5_yQrqd__AAA6_Rd__lFQOyAD8RuleMarkV_A10_Qo__Qo_QPGATyA24__AvDEA5_yQrqd__AAA6_Rd__lFQOyAZyA2_SiA4_yATyA8__A17_QPGGG_AA14LinearGradientVQo_AZySaySdGSdAvDE7opacityyQrSdFQOyA28__Qo_GSgA28_ATyA28__AvDE10annotation8position9alignment7spacingAXQrAD18AnnotationPositionV_AA9AlignmentV0X8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAvDE6symbolA53_Qrqd__yXE_tAaBRd__lFQOyAD0Z4MarkV_AA08ModifiedR0VyAA09FillShapeC0VyAA6CircleVA10_AA011StrokeShapeC0VyA61_A10_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A57_yAA5ImageVAA24_ForegroundStyleModifierVyA10_GGQo_QPGQPGGARyATyA24__A28_ATyA28__A71_QPGQPGATyA24__AvDEA37_yQrSdFQOyA24__Qo_A28_QPGGGA24_GG_Qo__SNySdGQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewP6ChartsE10chartYAxisyQrAA10VisibilityOFQOyAD5ChartVyAD18BuilderConditionalVyAKyAKyAD0I5TupleVyAD0H7ContentPADE4mask7contentQrqd__yXE_tAdNRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceH5PointVGSiAD4PlotVyAMyAoDE15foregroundStyleyQrqd__AA05ShapeW0Rd__lFQOyAD8AreaMarkV_AA5ColorVQo__AoDEAZyQrqd__AAA_Rd__lFQOyAoDE04lineW0yQrAA06StrokeW0VFQOyAD04LineZ0V_Qo__A3_Qo_QPGGG_AD09RectangleZ0VQo__AoDEA5_yQrA7_FQOyAoDEAZyQrqd__AAA_Rd__lFQOyAD04RuleZ0V_A3_Qo__Qo_QPGAMyA17__AoDEAZyQrqd__AAA_Rd__lFQOyASyAWSiAYyAMyA1__A10_QPGGG_AA14LinearGradientVQo_ASySaySdGSdAoDE7opacityyQrSdFQOyA21__Qo_GSgA21_AMyA21__AoDE10annotation8position9alignment7spacingAQQrAD18AnnotationPositionV_AA9AlignmentV0R8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAoDE6symbolA46_Qrqd__yXE_tAaBRd__lFQOyAD0tZ0V_AA08ModifiedL0VyAA04FillxC0VyAA6CircleVA3_AA06StrokexC0VyA54_A3_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A50_yAA5ImageVAA011_ForegroundW8ModifierVyA3_GGQo_QPGQPGGAKyAMyA17__A21_AMyA21__A64_QPGQPGAMyA17__AoDEA30_yQrSdFQOyA17__Qo_A21_QPGGGA17_GG_Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts5ChartVyAA18BuilderConditionalVyAEyAEyAA0C5TupleVyAA0B7ContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeS0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineS0yQrAL06StrokeS0VFQOyAA04LineV0V_Qo__AZQo_QPGGG_AA09RectangleV0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleV0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0pV0V_AL08ModifiedF0VyAL04FillT4ViewVyAL6CircleVAzL0yT4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundS8ModifierVyAZGGQo_QPGQPGGAEyAGyA12__A16_AGyA16__A60_QPGQPGAGyA12__AiAEA25_yQrSdFQOyA12__Qo_A16_QPGGGA12_GGMd);
    lazy protocol witness table accessor for type Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>> and conformance Plot<A>(&lazy protocol witness table cache variable for type Chart<BuilderConditional<BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque , &_s6Charts5ChartVyAA18BuilderConditionalVyAEyAEyAA0C5TupleVyAA0B7ContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeS0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineS0yQrAL06StrokeS0VFQOyAA04LineV0V_Qo__AZQo_QPGGG_AA09RectangleV0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleV0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0pV0V_AL08ModifiedF0VyAL04FillT4ViewVyAL6CircleVAzL0yT4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundS8ModifierVyAZGGQo_QPGQPGGAEyAGyA12__A16_AGyA16__A60_QPGQPGAGyA12__AiAEA25_yQrSdFQOyA12__Qo_A16_QPGGGA12_GGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t LowPowerViewModel.showingLowPowerOverlay.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t key path getter for LowPowerViewModel.showingLowPowerOverlay : LowPowerViewModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t LowPowerViewModel.showingLowPowerOverlay.setter(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t LowPowerViewModel.lowPowerModeMonitor.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t key path getter for LowPowerViewModel.lowPowerModeMonitor : LowPowerViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

uint64_t LowPowerViewModel.lowPowerModeMonitor.setter(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void *LowPowerViewModel.waitingTimer.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id key path getter for LowPowerViewModel.waitingTimer : LowPowerViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

void LowPowerViewModel.waitingTimer.setter(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
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
    lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for NSTimer();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 32);
LABEL_8:
  *(v2 + 32) = a1;
}

uint64_t LowPowerViewModel.oldBrightness.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

uint64_t key path getter for LowPowerViewModel.oldBrightness : LowPowerViewModel@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v5;
  return result;
}

uint64_t LowPowerViewModel.oldBrightness.setter(uint64_t result, char a2)
{
  if ((*(v2 + 48) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 40) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 40) = *&result;
    *(v2 + 48) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  *&result = COERCE_DOUBLE();
  return result;
}

Swift::Void __swiftcall LowPowerViewModel.resetTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  static WOLog.lowPower.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_20C66F000, v9, v10, "Resetting low power mode timer", v11, 2u);
    MEMORY[0x20F30E080](v11, -1, -1);
  }

  v12 = *(v3 + 8);
  v25 = v2;
  v26 = v12;
  v12(v8, v2);
  swift_getKeyPath();
  aBlock[0] = v1;
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*(v1 + 32) invalidate];
  if (*(v1 + 32))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v24 - 2) = v1;
    *(&v24 - 1) = 0;
    aBlock[0] = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (*(v1 + 16))
    {
LABEL_5:
      v14 = swift_getKeyPath();
      MEMORY[0x28223BE20](v14);
      *(&v24 - 2) = v1;
      *(&v24 - 8) = 0;
      aBlock[0] = v1;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      goto LABEL_8;
    }
  }

  else if (*(v1 + 16))
  {
    goto LABEL_5;
  }

  *(v1 + 16) = 0;
LABEL_8:
  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v1 + 48) & 1) == 0)
  {
    v15 = *(v1 + 40);
    static WOLog.lowPower.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v15;
      _os_log_impl(&dword_20C66F000, v16, v17, "Bringing screen back to %f", v18, 0xCu);
      MEMORY[0x20F30E080](v18, -1, -1);
    }

    v26(v5, v25);
    v19 = [objc_opt_self() mainScreen];
    [v19 setBrightness_];
  }

  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = dispatch thunk of LowPowerModeMonitor.lowPowerModeEnabled.getter();

  if (v20)
  {
    v21 = objc_opt_self();
    aBlock[4] = partial apply for closure #1 in LowPowerViewModel.resetTimer();
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    aBlock[3] = &block_descriptor_36;
    v22 = _Block_copy(aBlock);

    v23 = [v21 scheduledTimerWithTimeInterval:0 repeats:v22 block:8.0];
    _Block_release(v22);
    LowPowerViewModel.waitingTimer.setter(v23);
  }
}

void closure #1 in LowPowerViewModel.resetTimer()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.lowPower.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20C66F000, v4, v5, "Dimming the screen for low power mode", v6, 2u);
    MEMORY[0x20F30E080](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  v7 = objc_opt_self();
  v8 = [v7 mainScreen];
  [v8 brightness];
  v10 = v9;

  LowPowerViewModel.oldBrightness.setter(v10, 0);
  v11 = [v7 mainScreen];
  [v11 setBrightness_];
}

uint64_t closure #1 in closure #1 in LowPowerViewModel.resetTimer()(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    *(result + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t LowPowerViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC9WorkoutUI17LowPowerViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LowPowerViewModel()
{
  result = type metadata singleton initialization cache for LowPowerViewModel;
  if (!type metadata singleton initialization cache for LowPowerViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LowPowerViewModel()
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

unint64_t lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel()
{
  result = lazy protocol witness table cache variable for type LowPowerViewModel and conformance LowPowerViewModel;
  if (!lazy protocol witness table cache variable for type LowPowerViewModel and conformance LowPowerViewModel)
  {
    type metadata accessor for LowPowerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LowPowerViewModel and conformance LowPowerViewModel);
  }

  return result;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void partial apply for closure #1 in LowPowerViewModel.waitingTimer.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

void partial apply for closure #1 in LowPowerViewModel.oldBrightness.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = v2;
}

uint64_t partial apply for closure #1 in LowPowerViewModel.lowPowerModeMonitor.setter()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

void closure #1 in LowPowerViewModel.showingLowPowerOverlay.setterpartial apply()
{
  partial apply for closure #1 in LowPowerViewModel.showingLowPowerOverlay.setter();
}

{
  partial apply for closure #1 in LowPowerViewModel.showingLowPowerOverlay.setter();
}

uint64_t AlertsEntryView.minimumSelectableValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TargetZone.ZoneType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for AlertsEntryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd);
  State.wrappedValue.getter();
  v10 = *(v0 + *(v9 + 32));
  v11 = *(v1 + *(v9 + 56));
  (*(v3 + 16))(v5, v8, v2);
  v12 = (*(v3 + 88))(v5, v2);
  if (v12 == *MEMORY[0x277D7DE48] || v12 == *MEMORY[0x277D7DE40] || v12 == *MEMORY[0x277D7DE60])
  {
    TargetZone.ZoneType.minimumPaceRangeValue(activityType:userDistanceUnit:)(v10, v11);
    return (*(v3 + 8))(v8, v2);
  }

  else if (v12 == *MEMORY[0x277D7DE70] || v12 == *MEMORY[0x277D7DE58])
  {
    [v10 effectiveTypeIdentifier];
    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    v17 = v12 == *MEMORY[0x277D7DE68] || v12 == *MEMORY[0x277D7DE50];
    if (v17 || v12 == *MEMORY[0x277D7DE78])
    {
      return (*(v3 + 8))(v8, v2);
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t AlertsEntryView.maximumSelectableValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TargetZone.ZoneType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for AlertsEntryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd);
  State.wrappedValue.getter();
  v10 = *(v0 + *(v9 + 32));
  v11 = *(v1 + *(v9 + 56));
  (*(v3 + 16))(v5, v8, v2);
  v12 = (*(v3 + 88))(v5, v2);
  if (v12 == *MEMORY[0x277D7DE48] || v12 == *MEMORY[0x277D7DE40] || v12 == *MEMORY[0x277D7DE60])
  {
    TargetZone.ZoneType.maximumPaceRangeValue(activityType:userDistanceUnit:)(v10, v11);
    return (*(v3 + 8))(v8, v2);
  }

  if (v12 == *MEMORY[0x277D7DE70] || v12 == *MEMORY[0x277D7DE58])
  {
    return (*(v3 + 8))(v8, v2);
  }

  v16 = v12 == *MEMORY[0x277D7DE68] || v12 == *MEMORY[0x277D7DE50];
  if (v16 || v12 == *MEMORY[0x277D7DE78])
  {
    return (*(v3 + 8))(v8, v2);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void AlertsEntryView.init(targetZone:activityType:formattingManager:configurationContext:activityMoveMode:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, int *a7@<X6>, char *a8@<X8>)
{
  v93 = a7;
  v94 = a6;
  v90 = a4;
  v91 = a5;
  v12 = type metadata accessor for TargetZone.ZoneType();
  v97 = *(v12 - 8);
  v98 = v12;
  MEMORY[0x28223BE20](v12);
  v87 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v99 = &v79 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v79 - v17;
  v86 = type metadata accessor for TargetZone.PrimaryType();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105[0] = 0;
  State.init(wrappedValue:)();
  v84 = v103;
  v105[0] = 0;
  State.init(wrappedValue:)();
  v83 = v103;
  v105[0] = 0;
  State.init(wrappedValue:)();
  v82 = v103;
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  v102 = a1;
  v103 = a2;
  v104 = a3;

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMd);
  MEMORY[0x20F30B100](v105);
  v22 = type metadata accessor for AlertsEntryView(0);
  v23 = &a8[v22[6]];
  TargetZone.type.getter();

  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd);
  v101 = v23;
  *&v23[*(v100 + 28)] = 0;
  v24 = a8;
  v102 = a1;
  v103 = a2;
  v104 = a3;
  MEMORY[0x20F30B100](v105, v21);
  TargetZone.type.getter();

  TargetZone.ZoneType.primaryType.getter();
  v25 = *(v97 + 8);
  v92 = v18;
  v26 = v18;
  v27 = a1;
  v95 = v97 + 8;
  v96 = v25;
  v25(v26, v98);
  v28 = v90;
  v29 = v94;
  v81 = v20;
  *&v24[v22[7]] = TargetZone.PrimaryType.subTypes(activityType:configurationContext:activityMoveMode:)();
  *&v24[v22[8]] = v28;
  v30 = v28;
  v31 = v91;
  *&v24[v22[9]] = v91;
  v93 = v22;
  v32 = v22[10];
  v33 = type metadata accessor for AlertConfigurationContext();
  v79 = *(v33 - 8);
  v34 = *(v79 + 16);
  v80 = v33;
  v34(&v24[v32], v29);
  v35 = v27;
  v102 = v27;
  v103 = a2;
  v104 = a3;
  v36 = v30;
  v37 = v31;
  MEMORY[0x20F30B100](v105, v21);
  LOBYTE(v22) = dispatch thunk of TargetZone.enabled.getter();

  v89 = a2;
  v88 = v21;
  if (v22)
  {
    v102 = v27;
    v103 = a2;
    v104 = a3;
    MEMORY[0x20F30B100](v105, v21);
    v38 = dispatch thunk of TargetZone.isSingleThreshold.getter();

    v39 = a3;
    v24[24] = (v38 & 1) == 0;
  }

  else
  {
    v24[24] = 2;
    v39 = a3;
  }

  v40 = v36;
  v41 = v92;
  *(v24 + 4) = 0;
  v42 = FIUIDistanceTypeForActivityType();
  v43 = [v37 unitManager];

  if (!v43)
  {
    goto LABEL_39;
  }

  v44 = [v43 userDistanceUnitForDistanceType_];

  v45 = v93[14];
  v92 = v24;
  *&v24[v45] = v44;
  State.wrappedValue.getter();
  TargetZone.ZoneType.minimumRangeValue(activityType:userDistanceUnit:)(v36, v44);
  v47 = v46;
  v48 = v98;
  v96(v41, v98);
  v49 = v99;
  State.wrappedValue.getter();
  v50 = v97;
  v51 = v87;
  (*(v97 + 16))(v87, v49, v48);
  v52 = (*(v50 + 88))(v51, v48);
  if (v52 == *MEMORY[0x277D7DE48] || v52 == *MEMORY[0x277D7DE40] || v52 == *MEMORY[0x277D7DE60])
  {
    goto LABEL_16;
  }

  v53 = 280.0;
  v54 = v88;
  if (v52 != *MEMORY[0x277D7DE70])
  {
    v44 = v89;
    v55 = v96;
    if (v52 == *MEMORY[0x277D7DE58])
    {
      goto LABEL_17;
    }

    v53 = 805.0;
    if (v52 == *MEMORY[0x277D7DE68])
    {
      goto LABEL_17;
    }

    if (v52 == *MEMORY[0x277D7DE50])
    {
      goto LABEL_17;
    }

    v53 = 0.0;
    if (v52 == *MEMORY[0x277D7DE78])
    {
      goto LABEL_17;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_16:
    TargetZone.ZoneType.maximumPaceRangeValue(activityType:userDistanceUnit:)(v40, v44);
    v53 = v56;
    v44 = v89;
    v55 = v96;
    v54 = v88;
LABEL_17:
    v55(v99, v48);
    goto LABEL_18;
  }

  v44 = v89;
  v55 = v96;
  v96(v99, v48);
LABEL_18:
  if (v47 > v53)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  v102 = v35;
  v103 = v44;
  v104 = v39;
  MEMORY[0x20F30B100](v105, v54);
  dispatch thunk of TargetZone.min.getter();
  v58 = v57;

  if (v47 <= v58 && v58 <= v53)
  {
    v102 = v35;
    v103 = v44;
    v104 = v39;
    MEMORY[0x20F30B100](v105, v54);
    dispatch thunk of TargetZone.min.getter();
    v60 = v61;
  }

  else
  {
    State.wrappedValue.getter();
    TargetZone.ZoneType.defaultLowRangeValue(activityType:)(v40);
    v60 = v59;
    v55(v41, v48);
  }

  v102 = v35;
  v103 = v44;
  v104 = v39;
  MEMORY[0x20F30B100](v105, v54);
  dispatch thunk of TargetZone.max.getter();
  v63 = v62;

  if (v47 <= v63 && v63 <= v53)
  {
    v102 = v35;
    v103 = v44;
    v104 = v39;
    MEMORY[0x20F30B100](v105, v54);

    dispatch thunk of TargetZone.max.getter();
    v65 = v66;
  }

  else
  {

    State.wrappedValue.getter();
    TargetZone.ZoneType.defaultUpperRangeValue(activityType:)(v40);
    v65 = v64;
    v55(v41, v48);
  }

  v67 = v86;
  v68 = v85;
  if (v60 == v65)
  {

    (*(v79 + 8))(v94, v80);
    v69 = v60;
  }

  else
  {
    State.wrappedValue.getter();
    TargetZone.ZoneType.defaultTargetValue(activityType:)(v40);
    v69 = v70;

    (*(v79 + 8))(v94, v80);
    v55(v41, v48);
  }

  (*(v68 + 8))(v81, v67);

  v72 = v92;
  v71 = v93;
  v73 = v93[12];
  v74 = &v92[v93[11]];
  *v74 = v69;
  v74[1] = 0.0;
  if (v65 >= v60)
  {
    v75 = v60;
  }

  else
  {
    v75 = v65;
  }

  if (v65 >= v60)
  {
    v76 = v65;
  }

  else
  {
    v76 = v60;
  }

  v77 = &v72[v73];
  *v77 = v75;
  *(v77 + 1) = 0;
  v78 = &v72[v71[13]];
  *v78 = v76;
  *(v78 + 1) = 0;
}

void type metadata completion function for AlertsEntryView()
{
  type metadata accessor for Binding<TargetZone>(319, &lazy cache variable for type metadata for Binding<TargetZone>, MEMORY[0x277D7DF08], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for State<RangedAlertStyle>(319, &lazy cache variable for type metadata for State<RangedAlertStyle>, &type metadata for RangedAlertStyle, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Binding<TargetZone>(319, &lazy cache variable for type metadata for State<TargetZone.ZoneType>, MEMORY[0x277D7DE80], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Binding<TargetZone>(319, &lazy cache variable for type metadata for [TargetZone.ZoneType], MEMORY[0x277D7DE80], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          _sSo23FIUIWorkoutActivityTypeCMaTm_10(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
          if (v4 <= 0x3F)
          {
            _sSo23FIUIWorkoutActivityTypeCMaTm_10(319, &lazy cache variable for type metadata for FIUIFormattingManager);
            if (v5 <= 0x3F)
            {
              type metadata accessor for AlertConfigurationContext();
              if (v6 <= 0x3F)
              {
                type metadata accessor for State<RangedAlertStyle>(319, &lazy cache variable for type metadata for State<Double>, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for FIUIDistanceUnit(319);
                  if (v8 <= 0x3F)
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
  }
}

void type metadata accessor for Binding<TargetZone>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_10(uint64_t a1, unint64_t *a2)
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

uint64_t AlertsEntryView.pickerZoneTypesLabel.getter()
{
  v1 = v0;
  static Platform.current.getter();
  v2 = Platform.rawValue.getter();
  if (v2 != Platform.rawValue.getter())
  {
    return 0;
  }

  v16[1] = *v1;
  v17 = *(v1 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMd);
  MEMORY[0x20F30B100](v16, v3);
  v4 = TargetZone.alertConfigurationType.getter();

  if (v4 == 8)
  {
    return 0;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = WorkoutUIBundle.super.isa;
  v18._object = 0xE000000000000000;
  v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v7.value._object = 0xEB00000000656C62;
  v8._object = 0x800000020CBA2930;
  v8._countAndFlagsBits = 0xD00000000000002ALL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20CB5DA70;
  v11 = type metadata accessor for AlertsEntryView(0);
  v12 = AlertConfigurationType.localizedTitle(activityType:)(*(v1 + *(v11 + 32)), v4);
  v14 = v13;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v15 = static String.localizedStringWithFormat(_:_:)();

  return v15;
}

uint64_t TargetZone.alertConfigurationType.getter()
{
  v0 = type metadata accessor for TargetZone.PrimaryType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TargetZone.ZoneType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TargetZone.type.getter();
  TargetZone.ZoneType.primaryType.getter();
  (*(v5 + 8))(v7, v4);
  v8 = (*(v1 + 88))(v3, v0);
  if (v8 == *MEMORY[0x277D7DEB8])
  {
    return 8;
  }

  if (v8 == *MEMORY[0x277D7DEC0])
  {
    return 0;
  }

  if (v8 == *MEMORY[0x277D7DED0])
  {
    return 2;
  }

  if (v8 == *MEMORY[0x277D7DEC8])
  {
    return 3;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t AlertsEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v70 = type metadata accessor for TargetZone.ZoneType();
  v72 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AlertsEntryView(0);
  v5 = *(v4 - 8);
  v6 = v4 - 8;
  v76 = v4 - 8;
  MEMORY[0x28223BE20](v4 - 8);
  v8 = v7;
  v9 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA7SectionVyAA05EmptyG0VAA0G0PAAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA4TextV11WorkoutCore10TargetZoneC0Q4TypeOAA7ForEachVySayAXGAxA08ModifiedE0VyAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAS_AXQo_0nB015BodyHyphenationVGGG_AA07DefaultlK0VQo_AKGSg_AIyAkmAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyA1_yAmAEANyQrqd__AaORd__lFQOyAQyAKA5_011RangedAlertK0OAZySayA20_GA20_A1_yAmAEA2__A3_Qrqd___SbtSHRd__lFQOyAS_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedlK0VQo_A5_09ClearListK033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_AKGAIyAKA5_0L6ButtonVAKGSgAIyAsGyA38__A38_tGAKGSgtGAGyA35__A13_SgA38_SgA41_SgtGGGMd);
  MEMORY[0x28223BE20](v77);
  v11 = &v61 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAA05TupleC0VyAA7SectionVyAA05EmptyC0VAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA4TextV11WorkoutCore10TargetZoneC0U4TypeOAA7ForEachVySayA_GA_AA08ModifiedJ0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAV_A_Qo_0rB015BodyHyphenationVGGG_AA07DefaultpO0VQo_APGSg_ANyApcAEAdeF_Qrqd___SbyyctSQRd__lFQOyA4_yAcAEAQyQrqd__AaRRd__lFQOyATyAPA8_011RangedAlertO0OA1_ySayA20_GA20_A4_yAcAEA5__A6_Qrqd___SbtSHRd__lFQOyAV_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedpO0VQo_A8_09ClearListO033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_APGANyAPA8_0P6ButtonVAPGSgANyAvLyA38__A38_tGAPGSgtGALyA35__A16_SgA38_SgA41_SgtGGG_SdQo_Md);
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAA05TupleC0VyAA7SectionVyAA05EmptyC0VAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA4TextV11WorkoutCore10TargetZoneC0U4TypeOAA7ForEachVySayA_GA_AA08ModifiedJ0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAV_A_Qo_0rB015BodyHyphenationVGGG_AA07DefaultpO0VQo_APGSg_ANyApcAEAdeF_Qrqd___SbyyctSQRd__lFQOyA4_yAcAEAQyQrqd__AaRRd__lFQOyATyAPA8_011RangedAlertO0OA1_ySayA20_GA20_A4_yAcAEA5__A6_Qrqd___SbtSHRd__lFQOyAV_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedpO0VQo_A8_09ClearListO033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_APGANyAPA8_0P6ButtonVAPGSgANyAvLyA38__A38_tGAPGSgtGALyA35__A16_SgA38_SgA41_SgtGGG_SdQo__SdQo_Md);
  v14 = *(v13 - 8);
  v65 = v13;
  v66 = v14;
  MEMORY[0x28223BE20](v13);
  v78 = &v61 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAA05TupleC0VyAA7SectionVyAA05EmptyC0VAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA4TextV11WorkoutCore10TargetZoneC0U4TypeOAA7ForEachVySayA_GA_AA08ModifiedJ0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAV_A_Qo_0rB015BodyHyphenationVGGG_AA07DefaultpO0VQo_APGSg_ANyApcAEAdeF_Qrqd___SbyyctSQRd__lFQOyA4_yAcAEAQyQrqd__AaRRd__lFQOyATyAPA8_011RangedAlertO0OA1_ySayA20_GA20_A4_yAcAEA5__A6_Qrqd___SbtSHRd__lFQOyAV_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedpO0VQo_A8_09ClearListO033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_APGANyAPA8_0P6ButtonVAPGSgANyAvLyA38__A38_tGAPGSgtGALyA35__A16_SgA38_SgA41_SgtGGG_SdQo__SdQo__SdQo_Md);
  v17 = *(v16 - 8);
  v67 = v16;
  v68 = v17;
  MEMORY[0x28223BE20](v16);
  v79 = &v61 - v18;
  closure #1 in AlertsEntryView.body.getter(v1, v11);
  v19 = (v1 + *(v6 + 56));
  v20 = *v19;
  v21 = v19[1];
  v81 = v20;
  v82 = v21;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  v22 = v9;
  v80 = v9;
  outlined init with copy of AlertsEntryView(v2, v9, type metadata accessor for AlertsEntryView);
  v74 = *(v5 + 80);
  v75 = v8;
  v23 = (v74 + 16) & ~v74;
  v24 = swift_allocObject();
  outlined init with take of AlertsEntryView(v22, v24 + v23, type metadata accessor for AlertsEntryView);
  v25 = lazy protocol witness table accessor for type Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>> and conformance <A> Group<A>();
  v26 = v77;
  View.onChange<A>(of:initial:_:)();

  outlined destroy of Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>>(v11, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA7SectionVyAA05EmptyG0VAA0G0PAAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA4TextV11WorkoutCore10TargetZoneC0Q4TypeOAA7ForEachVySayAXGAxA08ModifiedE0VyAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAS_AXQo_0nB015BodyHyphenationVGGG_AA07DefaultlK0VQo_AKGSg_AIyAkmAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyA1_yAmAEANyQrqd__AaORd__lFQOyAQyAKA5_011RangedAlertK0OAZySayA20_GA20_A1_yAmAEA2__A3_Qrqd___SbtSHRd__lFQOyAS_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedlK0VQo_A5_09ClearListK033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_AKGAIyAKA5_0L6ButtonVAKGSgAIyAsGyA38__A38_tGAKGSgtGAGyA35__A13_SgA38_SgA41_SgtGGGMd);
  v27 = v76;
  v28 = *(v76 + 60);
  v73 = v2;
  v29 = (v2 + v28);
  v30 = *v29;
  v31 = v29[1];
  v81 = v30;
  v82 = v31;
  State.wrappedValue.getter();
  v32 = v80;
  outlined init with copy of AlertsEntryView(v2, v80, type metadata accessor for AlertsEntryView);
  v33 = swift_allocObject();
  outlined init with take of AlertsEntryView(v32, v33 + v23, type metadata accessor for AlertsEntryView);
  v81 = v26;
  v82 = MEMORY[0x277D839F8];
  v83 = v25;
  v84 = MEMORY[0x277D83A28];
  v77 = MEMORY[0x277CE0E40];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v63;
  v36 = v62;
  View.onChange<A>(of:initial:_:)();

  (*(v64 + 8))(v36, v35);
  v37 = v73;
  v38 = (v73 + *(v27 + 52));
  v39 = *v38;
  v40 = v38[1];
  v81 = v39;
  v82 = v40;
  State.wrappedValue.getter();
  v41 = v80;
  outlined init with copy of AlertsEntryView(v37, v80, type metadata accessor for AlertsEntryView);
  v42 = swift_allocObject();
  outlined init with take of AlertsEntryView(v41, v42 + v23, type metadata accessor for AlertsEntryView);
  v81 = v35;
  v82 = MEMORY[0x277D839F8];
  v83 = OpaqueTypeConformance2;
  v84 = MEMORY[0x277D83A28];
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v65;
  v45 = v78;
  View.onChange<A>(of:initial:_:)();

  (*(v66 + 8))(v45, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd);
  v46 = v37;
  v47 = v69;
  State.wrappedValue.getter();
  v48 = v80;
  outlined init with copy of AlertsEntryView(v46, v80, type metadata accessor for AlertsEntryView);
  v49 = swift_allocObject();
  v50 = v48;
  outlined init with take of AlertsEntryView(v48, v49 + v23, type metadata accessor for AlertsEntryView);
  v81 = v44;
  v82 = MEMORY[0x277D839F8];
  v83 = v43;
  v84 = MEMORY[0x277D83A28];
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80]);
  v52 = v70;
  v51 = v71;
  v53 = v67;
  v54 = v79;
  View.onChange<A>(of:initial:_:)();

  (*(v72 + 8))(v47, v52);
  (*(v68 + 8))(v54, v53);
  v55 = v73;
  outlined init with copy of AlertsEntryView(v73, v50, type metadata accessor for AlertsEntryView);
  v56 = swift_allocObject();
  outlined init with take of AlertsEntryView(v50, v56 + v23, type metadata accessor for AlertsEntryView);
  v57 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA012_ConditionalD0VyAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE11pickerStyleyQrqd__AA06PickerP0Rd__lFQOyAA0Q0VyAA4TextV11WorkoutCore10TargetZoneC0V4TypeOAA7ForEachVySayA1_GA1_ACyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAX_A1_Qo_0sB015BodyHyphenationVGGG_AA07DefaultqP0VQo_ARGSg_APyAreAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEASyQrqd__AaTRd__lFQOyAVyARA8_011RangedAlertP0OA3_ySayA20_GA20_ACyAeAEA5__A6_Qrqd___SbtSHRd__lFQOyAX_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedqP0VQo_A8_09ClearListP033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_ARGAPyARA8_0Q6ButtonVARGSgAPyAxNyA38__A38_tGARGSgtGANyA35__A16_SgA38_SgA41_SgtGGG_SdQo__SdQo__SdQo__A1_Qo_AA25_AppearanceActionModifierVGMd) + 36));
  *v57 = partial apply for closure #6 in AlertsEntryView.body.getter;
  v57[1] = v56;
  v57[2] = 0;
  v57[3] = 0;
  outlined init with copy of AlertsEntryView(v55, v50, type metadata accessor for AlertsEntryView);
  v58 = swift_allocObject();
  outlined init with take of AlertsEntryView(v50, v58 + v23, type metadata accessor for AlertsEntryView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA012_ConditionalD0VyAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE11pickerStyleyQrqd__AA06PickerP0Rd__lFQOyAA0Q0VyAA4TextV11WorkoutCore10TargetZoneC0V4TypeOAA7ForEachVySayA1_GA1_ACyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAX_A1_Qo_0sB015BodyHyphenationVGGG_AA07DefaultqP0VQo_ARGSg_APyAreAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEASyQrqd__AaTRd__lFQOyAVyARA8_011RangedAlertP0OA3_ySayA20_GA20_ACyAeAEA5__A6_Qrqd___SbtSHRd__lFQOyAX_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedqP0VQo_A8_09ClearListP033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_ARGAPyARA8_0Q6ButtonVARGSgAPyAxNyA38__A38_tGARGSgtGANyA35__A16_SgA38_SgA41_SgtGGG_SdQo__SdQo__SdQo__A1_Qo_AA25_AppearanceActionModifierVGA56_GMd);
  v60 = (v51 + *(result + 36));
  *v60 = 0;
  v60[1] = 0;
  v60[2] = partial apply for closure #7 in AlertsEntryView.body.getter;
  v60[3] = v58;
  return result;
}

uint64_t closure #1 in AlertsEntryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v167 = a2;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAeAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyD0V07WorkoutB0011RangedAlertL0OAA7ForEachVySayASGAsJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedmL0VQo_AQ09ClearListL033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo__AeAEAKyQrqd__AaLRd__lFQOyANyAZ0O4Core10TargetZoneC8ZoneTypeOAUySayA17_GA17_AJyAeAEAW_AXQrqd___SbtSHRd__lFQOyAZ_A17_Qo_AQ15BodyHyphenationVGGG_AA07DefaultmL0VQo_SgAQ0M6ButtonVSgACyA30__A30_tGSgtGMd);
  MEMORY[0x28223BE20](v166);
  v154 = &v127 - v3;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGMd);
  v150 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v138 = &v127 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v152 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v127 - v8;
  v156 = type metadata accessor for PickerButton(0);
  v147 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v137 = (&v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI12PickerButtonVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v151 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v162 = &v127 - v14;
  v135 = type metadata accessor for DefaultPickerStyle();
  v132 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v130 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneC0G4TypeOGMd);
  MEMORY[0x28223BE20](v16 - 8);
  v133 = &v127 - v17;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_0eB015BodyHyphenationVGGGMd);
  v131 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v129 = &v127 - v18;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnA15ModifiedContentVyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo_0hB015BodyHyphenationVGGG_AA07DefaultfE0VQo_Md);
  v139 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v20 = &v127 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnA15ModifiedContentVyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo_0hB015BodyHyphenationVGGG_AA07DefaultfE0VQo_SgMd);
  MEMORY[0x28223BE20](v21 - 8);
  v148 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v171 = &v127 - v24;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA05EmptyC0V07WorkoutB0011RangedAlertK0OAA7ForEachVySayAQGAqHyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AQQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedlK0VQo_AO09ClearListK033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AQQo_Md);
  v172 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v146 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v127 - v27;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA7SectionVyAA05EmptyG0VAA0G0PAAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA4TextV11WorkoutCore10TargetZoneC0Q4TypeOAA7ForEachVySayAXGAxA08ModifiedD0VyAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAS_AXQo_0nB015BodyHyphenationVGGG_AA07DefaultlK0VQo_AKGSg_AIyAkmAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyA1_yAmAEANyQrqd__AaORd__lFQOyAQyAKA5_011RangedAlertK0OAZySayA20_GA20_A1_yAmAEA2__A3_Qrqd___SbtSHRd__lFQOyAS_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedlK0VQo_A5_09ClearListK033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_AKGAIyAKA5_0L6ButtonVAKGSgAIyAsGyA38__A38_tGAKGSgtGAGyA35__A13_SgA38_SgA41_SgtG_GMd);
  MEMORY[0x28223BE20](v163);
  v165 = &v127 - v29;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA4TextV11WorkoutCore10TargetZoneC0N4TypeOAA7ForEachVySayATGAtA15ModifiedContentVyAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_0kB015BodyHyphenationVGGG_AA07DefaultiH0VQo_AGGSg_AEyAgiAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAYyAiAEAJyQrqd__AaKRd__lFQOyAMyAGA1_011RangedAlertH0OAVySayA16_GA16_AYyAiAEAZ_A_Qrqd___SbtSHRd__lFQOyAO_A16_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentediH0VQo_A1_09ClearListH033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A16_Qo_AGGAEyAGA1_0I6ButtonVAGGSgAEyAoCyA34__A34_tGAGGSgtGMd);
  MEMORY[0x28223BE20](v164);
  v149 = &v127 - v30;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB012PickerButtonV_AJtGAA05EmptyF0VGMd);
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v136 = &v127 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB012PickerButtonV_AJtGAA05EmptyF0VGSgMd);
  MEMORY[0x28223BE20](v32 - 8);
  v145 = &v127 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v161 = &v127 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB012PickerButtonVAEGMd);
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v127 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB012PickerButtonVAEGSgMd);
  MEMORY[0x28223BE20](v40 - 8);
  v142 = &v127 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v160 = &v127 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAgAE11pickerStyleyQrqd__AA06PickerM0Rd__lFQOyAA0N0VyAE07WorkoutB0011RangedAlertM0OAA7ForEachVySayASGAsLyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentednM0VQo_AQ09ClearListM033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo_AEGMd);
  v158 = *(v44 - 8);
  v159 = v44;
  MEMORY[0x28223BE20](v44);
  v141 = &v127 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v168 = &v127 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGMd);
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v51 = &v127 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGSgMd);
  MEMORY[0x28223BE20](v52 - 8);
  v140 = &v127 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v170 = &v127 - v55;
  if (static Platform.current.getter())
  {
    v153 = v9;
    AlertsEntryView.alertStylePicker()(v28);
    v56 = *(a1 + 24);
    v57 = *(a1 + 32);
    LOBYTE(v173) = v56;
    v174 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB016RangedAlertStyleOGMd);
    State.wrappedValue.getter();
    v58 = a1;
    v59 = v28;
    v128 = v28;
    if (v177 && v177 != 1)
    {
    }

    else
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v62 & 1) == 0 && *(*(v58 + *(type metadata accessor for AlertsEntryView(0) + 28)) + 16) >= 2uLL)
      {
        v173 = AlertsEntryView.pickerZoneTypesLabel.getter();
        v174 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd);
        v64 = State.projectedValue.getter();
        v168 = &v127;
        MEMORY[0x28223BE20](v64);
        v170 = v20;
        v161 = type metadata accessor for TargetZone.ZoneType();
        v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_0eB015BodyHyphenationVGGMd);
        lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80]);
        lazy protocol witness table accessor for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation>> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation>> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_0eB015BodyHyphenationVGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_0eB015BodyHyphenationVGGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation> and conformance <> ModifiedContent<A, B>);
        lazy protocol witness table accessor for type String and conformance String();
        v65 = v129;
        Picker<>.init<A>(_:selection:content:)();
        v66 = v130;
        DefaultPickerStyle.init()();
        lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<Text, TargetZone.ZoneType, ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_0eB015BodyHyphenationVGGGMd);
        v67 = v134;
        v68 = v135;
        View.pickerStyle<A>(_:)();
        (*(v132 + 8))(v66, v68);
        v69 = v67;
        v59 = v128;
        (*(v131 + 8))(v65, v69);
        v70 = v139;
        v71 = v155;
        (*(v139 + 32))(v171, v170, v155);
        v72 = v71;
        v73 = 0;
        goto LABEL_16;
      }
    }

    v73 = 1;
    v72 = v155;
    v70 = v139;
LABEL_16:
    (*(v70 + 56))(v171, v73, 1, v72);
    LOBYTE(v173) = v56;
    v174 = v57;
    State.wrappedValue.getter();
    if (v177)
    {
      v78 = v162;
      v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v79 & 1) == 0)
      {
        v80 = 1;
LABEL_21:
        (*(v147 + 56))(v78, v80, 1, v156);
        LOBYTE(v173) = v56;
        v174 = v57;
        State.wrappedValue.getter();
        if (v177 && v177 == 1)
        {
        }

        else
        {
          v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v92 & 1) == 0)
          {
            v93 = v78;
            v94 = v59;
            v97 = 1;
            v98 = v157;
            v96 = v153;
            goto LABEL_39;
          }
        }

        v93 = v78;
        v94 = v59;
        v95 = v138;
        AlertsEntryView.rangedPickerButtons()(v138);
        v96 = v153;
        outlined init with take of TupleView<(PickerButton, PickerButton)>(v95, v153);
        v97 = 0;
        v98 = v157;
LABEL_39:
        v99 = v152;
        (*(v150 + 56))(v96, v97, 1, v98);
        Kind = v172[1].Kind;
        v101 = v146;
        v102 = v169;
        Kind(v146, v94, v169);
        v103 = v148;
        outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v171, v148, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnA15ModifiedContentVyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo_0hB015BodyHyphenationVGGG_AA07DefaultfE0VQo_SgMd);
        v104 = v93;
        v105 = v151;
        outlined init with copy of PickerButton?(v104, v151, &_s9WorkoutUI12PickerButtonVSgMd);
        outlined init with copy of PickerButton?(v96, v99, &_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGSgMd);
        v106 = v154;
        Kind(v154, v101, v102);
        v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA05EmptyC0V07WorkoutB0011RangedAlertK0OAA7ForEachVySayAQGAqHyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AQQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedlK0VQo_AO09ClearListK033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AQQo__AcAEAIyQrqd__AaJRd__lFQOyALyAX0N4Core10TargetZoneC8ZoneTypeOASySayA15_GA15_AHyAcAEAU_AVQrqd___SbtSHRd__lFQOyAX_A15_Qo_AO15BodyHyphenationVGGG_AA07DefaultlK0VQo_SgAO0L6ButtonVSgAA05TupleC0VyA28__A28_tGSgtMd);
        outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v103, v106 + v107[12], &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnA15ModifiedContentVyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo_0hB015BodyHyphenationVGGG_AA07DefaultfE0VQo_SgMd);
        outlined init with copy of PickerButton?(v105, v106 + v107[16], &_s9WorkoutUI12PickerButtonVSgMd);
        outlined init with copy of PickerButton?(v99, v106 + v107[20], &_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGSgMd);
        outlined destroy of TupleView<(PickerButton, PickerButton)>?(v99, &_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGSgMd);
        outlined destroy of TupleView<(PickerButton, PickerButton)>?(v105, &_s9WorkoutUI12PickerButtonVSgMd);
        outlined destroy of Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>>(v103, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnA15ModifiedContentVyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo_0hB015BodyHyphenationVGGG_AA07DefaultfE0VQo_SgMd);
        Description = v172->Description;
        v172 = (v172 + 8);
        v109 = v169;
        Description(v101, v169);
        outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v106, v165, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAeAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyD0V07WorkoutB0011RangedAlertL0OAA7ForEachVySayASGAsJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedmL0VQo_AQ09ClearListL033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo__AeAEAKyQrqd__AaLRd__lFQOyANyAZ0O4Core10TargetZoneC8ZoneTypeOAUySayA17_GA17_AJyAeAEAW_AXQrqd___SbtSHRd__lFQOyAZ_A17_Qo_AQ15BodyHyphenationVGGG_AA07DefaultmL0VQo_SgAQ0M6ButtonVSgACyA30__A30_tGSgtGMd);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA4TextV11WorkoutCore10TargetZoneC0N4TypeOAA7ForEachVySayATGAtA15ModifiedContentVyAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_0kB015BodyHyphenationVGGG_AA07DefaultiH0VQo_AGGSg_AEyAgiAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAYyAiAEAJyQrqd__AaKRd__lFQOyAMyAGA1_011RangedAlertH0OAVySayA16_GA16_AYyAiAEAZ_A_Qrqd___SbtSHRd__lFQOyAO_A16_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentediH0VQo_A1_09ClearListH033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A16_Qo_AGGAEyAGA1_0I6ButtonVAGGSgAEyAoCyA34__A34_tGAGGSgtGMd);
        lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAeAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyD0V07WorkoutB0011RangedAlertL0OAA7ForEachVySayASGAsJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedmL0VQo_AQ09ClearListL033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo__AeAEAKyQrqd__AaLRd__lFQOyANyAZ0O4Core10TargetZoneC8ZoneTypeOAUySayA17_GA17_AJyAeAEAW_AXQrqd___SbtSHRd__lFQOyAZ_A17_Qo_AQ15BodyHyphenationVGGG_AA07DefaultmL0VQo_SgAQ0M6ButtonVSgACyA30__A30_tGSgtGMd);
        _ConditionalContent<>.init(storage:)();
        outlined destroy of Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>>(v106, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAeAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyD0V07WorkoutB0011RangedAlertL0OAA7ForEachVySayASGAsJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedmL0VQo_AQ09ClearListL033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo__AeAEAKyQrqd__AaLRd__lFQOyANyAZ0O4Core10TargetZoneC8ZoneTypeOAUySayA17_GA17_AJyAeAEAW_AXQrqd___SbtSHRd__lFQOyAZ_A17_Qo_AQ15BodyHyphenationVGGG_AA07DefaultmL0VQo_SgAQ0M6ButtonVSgACyA30__A30_tGSgtGMd);
        outlined destroy of TupleView<(PickerButton, PickerButton)>?(v153, &_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGSgMd);
        outlined destroy of TupleView<(PickerButton, PickerButton)>?(v162, &_s9WorkoutUI12PickerButtonVSgMd);
        outlined destroy of Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>>(v171, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnA15ModifiedContentVyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo_0hB015BodyHyphenationVGGG_AA07DefaultfE0VQo_SgMd);
        return (Description)(v128, v109);
      }
    }

    else
    {

      v78 = v162;
    }

    v81 = v137;
    AlertsEntryView.targetPickerButton()(v137);
    outlined init with take of AlertsEntryView(v81, v78, type metadata accessor for PickerButton);
    v80 = 0;
    goto LABEL_21;
  }

  v60 = a1;
  v61 = *(a1 + 32);
  LODWORD(v171) = *(a1 + 24);
  LOBYTE(v173) = v171;
  v172 = v61;
  v174 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB016RangedAlertStyleOGMd);
  State.wrappedValue.getter();
  if (v177 && v177 != 1)
  {
  }

  else
  {
    v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v74 & 1) == 0)
    {
      v75 = type metadata accessor for AlertsEntryView(0);
      if (*(*(v60 + *(v75 + 28)) + 16) >= 2uLL)
      {
        MEMORY[0x28223BE20](v75);
        v76 = lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<Text, TargetZone.ZoneType, ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_0eB015BodyHyphenationVGGGMd);
        v173 = v134;
        v174 = v135;
        v175 = v76;
        v176 = MEMORY[0x277CDDE48];
        swift_getOpaqueTypeConformance2();
        Section<>.init(content:)();
        (*(v49 + 32))(v170, v51, v48);
        v77 = 0;
        goto LABEL_27;
      }
    }
  }

  v77 = 1;
LABEL_27:
  v162 = v36;
  v82 = (*(v49 + 56))(v170, v77, 1, v48);
  MEMORY[0x28223BE20](v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0V07WorkoutB0011RangedAlertG0OAA7ForEachVySayANGAnCyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ANQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedhG0VQo_AL09ClearListG033_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
  v84 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, ClearListStyle> and conformance <> ModifiedContent<A, B>();
  v85 = lazy protocol witness table accessor for type RangedAlertStyle and conformance RangedAlertStyle();
  v173 = v83;
  v174 = &type metadata for RangedAlertStyle;
  v175 = v84;
  v176 = v85;
  swift_getOpaqueTypeConformance2();
  Section<>.init(content:)();
  v86 = v171;
  LOBYTE(v173) = v171;
  v174 = v172;
  State.wrappedValue.getter();
  if (!v177)
  {

    v87 = v160;
    goto LABEL_31;
  }

  v87 = v160;
  v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v88)
  {
LABEL_31:
    MEMORY[0x28223BE20](v89);
    lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type PickerButton and conformance PickerButton, type metadata accessor for PickerButton);
    Section<>.init(content:)();
    v91 = v162;
    (*(v37 + 32))(v87, v39, v162);
    v90 = 0;
    goto LABEL_32;
  }

  v90 = 1;
  v91 = v162;
LABEL_32:
  (*(v37 + 56))(v87, v90, 1, v91);
  LOBYTE(v173) = v86;
  v174 = v172;
  State.wrappedValue.getter();
  if (v177 && v177 == 1)
  {
  }

  else
  {
    v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v111 & 1) == 0)
    {
      v117 = 1;
      v115 = v161;
      v118 = v145;
      v116 = v144;
      v114 = v143;
      goto LABEL_43;
    }
  }

  LOBYTE(v173) = v86;
  v174 = v172;
  State.wrappedValue.getter();
  v173 = RangedAlertStyle.displayString.getter(v177);
  v174 = v112;
  MEMORY[0x28223BE20](v173);
  lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(PickerButton, PickerButton)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGMd);
  lazy protocol witness table accessor for type String and conformance String();
  v113 = v136;
  Section<>.init<A>(_:content:)();
  v114 = v143;
  v115 = v161;
  v116 = v144;
  (*(v143 + 32))(v161, v113, v144);
  v117 = 0;
  v118 = v145;
LABEL_43:
  v119 = v142;
  (*(v114 + 56))(v115, v117, 1, v116);
  v120 = v140;
  outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v170, v140, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGSgMd);
  v121 = *(v158 + 16);
  v122 = v141;
  v121(v141, v168, v159);
  outlined init with copy of PickerButton?(v87, v119, &_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB012PickerButtonVAEGSgMd);
  outlined init with copy of PickerButton?(v115, v118, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB012PickerButtonV_AJtGAA05EmptyF0VGSgMd);
  v123 = v149;
  outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v120, v149, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGSgMd);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGSg_ACyAegAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAWyAgAEAHyQrqd__AaIRd__lFQOyAKyAEA_011RangedAlertG0OATySayA14_GA14_AWyAgAEAX_AYQrqd___SbtSHRd__lFQOyAM_A14_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedhG0VQo_A_09ClearListG033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A14_Qo_AEGACyAEA_0H6ButtonVAEGSgACyAmA05TupleE0VyA32__A32_tGAEGSgtMd);
  v125 = v159;
  v121((v123 + v124[12]), v122, v159);
  outlined init with copy of PickerButton?(v119, v123 + v124[16], &_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB012PickerButtonVAEGSgMd);
  outlined init with copy of PickerButton?(v118, v123 + v124[20], &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB012PickerButtonV_AJtGAA05EmptyF0VGSgMd);
  outlined destroy of TupleView<(PickerButton, PickerButton)>?(v118, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB012PickerButtonV_AJtGAA05EmptyF0VGSgMd);
  outlined destroy of TupleView<(PickerButton, PickerButton)>?(v119, &_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB012PickerButtonVAEGSgMd);
  v126 = *(v158 + 8);
  v126(v122, v125);
  outlined destroy of Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>>(v120, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGSgMd);
  outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v123, v165, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA4TextV11WorkoutCore10TargetZoneC0N4TypeOAA7ForEachVySayATGAtA15ModifiedContentVyAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_0kB015BodyHyphenationVGGG_AA07DefaultiH0VQo_AGGSg_AEyAgiAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAYyAiAEAJyQrqd__AaKRd__lFQOyAMyAGA1_011RangedAlertH0OAVySayA16_GA16_AYyAiAEAZ_A_Qrqd___SbtSHRd__lFQOyAO_A16_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentediH0VQo_A1_09ClearListH033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A16_Qo_AGGAEyAGA1_0I6ButtonVAGGSgAEyAoCyA34__A34_tGAGGSgtGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA4TextV11WorkoutCore10TargetZoneC0N4TypeOAA7ForEachVySayATGAtA15ModifiedContentVyAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_0kB015BodyHyphenationVGGG_AA07DefaultiH0VQo_AGGSg_AEyAgiAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAYyAiAEAJyQrqd__AaKRd__lFQOyAMyAGA1_011RangedAlertH0OAVySayA16_GA16_AYyAiAEAZ_A_Qrqd___SbtSHRd__lFQOyAO_A16_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentediH0VQo_A1_09ClearListH033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A16_Qo_AGGAEyAGA1_0I6ButtonVAGGSgAEyAoCyA34__A34_tGAGGSgtGMd);
  lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAeAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyD0V07WorkoutB0011RangedAlertL0OAA7ForEachVySayASGAsJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedmL0VQo_AQ09ClearListL033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo__AeAEAKyQrqd__AaLRd__lFQOyANyAZ0O4Core10TargetZoneC8ZoneTypeOAUySayA17_GA17_AJyAeAEAW_AXQrqd___SbtSHRd__lFQOyAZ_A17_Qo_AQ15BodyHyphenationVGGG_AA07DefaultmL0VQo_SgAQ0M6ButtonVSgACyA30__A30_tGSgtGMd);
  _ConditionalContent<>.init(storage:)();
  outlined destroy of Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>>(v123, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA4TextV11WorkoutCore10TargetZoneC0N4TypeOAA7ForEachVySayATGAtA15ModifiedContentVyAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_0kB015BodyHyphenationVGGG_AA07DefaultiH0VQo_AGGSg_AEyAgiAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAYyAiAEAJyQrqd__AaKRd__lFQOyAMyAGA1_011RangedAlertH0OAVySayA16_GA16_AYyAiAEAZ_A_Qrqd___SbtSHRd__lFQOyAO_A16_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentediH0VQo_A1_09ClearListH033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A16_Qo_AGGAEyAGA1_0I6ButtonVAGGSgAEyAoCyA34__A34_tGAGGSgtGMd);
  outlined destroy of TupleView<(PickerButton, PickerButton)>?(v161, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB012PickerButtonV_AJtGAA05EmptyF0VGSgMd);
  outlined destroy of TupleView<(PickerButton, PickerButton)>?(v160, &_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB012PickerButtonVAEGSgMd);
  v126(v168, v125);
  return outlined destroy of Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>>(v170, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGSgMd);
}

uint64_t closure #1 in closure #1 in AlertsEntryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for DefaultPickerStyle();
  v4 = *(v3 - 8);
  v16 = v3;
  v17 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneC0G4TypeOGMd);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_0eB015BodyHyphenationVGGGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v20 = AlertsEntryView.pickerZoneTypesLabel.getter();
  v21 = v12;
  type metadata accessor for AlertsEntryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd);
  State.projectedValue.getter();
  v19 = a1;
  type metadata accessor for TargetZone.ZoneType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_0eB015BodyHyphenationVGGMd);
  lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80]);
  lazy protocol witness table accessor for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation>> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation>> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_0eB015BodyHyphenationVGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_0eB015BodyHyphenationVGGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation> and conformance <> ModifiedContent<A, B>);
  lazy protocol witness table accessor for type String and conformance String();
  Picker<>.init<A>(_:selection:content:)();
  DefaultPickerStyle.init()();
  lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<Text, TargetZone.ZoneType, ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_0eB015BodyHyphenationVGGGMd);
  v13 = v16;
  View.pickerStyle<A>(_:)();
  (*(v17 + 8))(v6, v13);
  return (*(v9 + 8))(v11, v8);
}

uint64_t AlertsEntryView.alertStylePicker()@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for AlertsEntryView(0);
  v30 = *(v2 - 8);
  v29 = *(v30 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v28 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SegmentedPickerStyle();
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewV07WorkoutB016RangedAlertStyleOAA7ForEachVySayAHGAhA15ModifiedContentVyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_AA31AccessibilityAttachmentModifierVGGGMd);
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v20 - v9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0V07WorkoutB0011RangedAlertG0OAA7ForEachVySayANGAnCyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ANQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedhG0VQo_AL09ClearListG033_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
  MEMORY[0x28223BE20](v27);
  v12 = &v20 - v11;
  v34 = v1;
  v13 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in AlertsEntryView.alertStylePicker(), v33, &outlined read-only object #0 of AlertsEntryView.alertStylePicker());
  v23 = v1;
  v22 = *(v1 + 24);
  v21 = *(v1 + 32);
  v37 = v22;
  v38 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB016RangedAlertStyleOGMd);
  State.projectedValue.getter();
  v32 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay07WorkoutB016RangedAlertStyleOGAfA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AFQo_AA31AccessibilityAttachmentModifierVGGMd);
  lazy protocol witness table accessor for type RangedAlertStyle and conformance RangedAlertStyle();
  lazy protocol witness table accessor for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation>> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<[RangedAlertStyle], RangedAlertStyle, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySay07WorkoutB016RangedAlertStyleOGAfA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AFQo_AA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI7ForEachVySay07WorkoutB016RangedAlertStyleOGAfA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AFQo_AA31AccessibilityAttachmentModifierVGGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  Picker.init(selection:label:content:)();

  SegmentedPickerStyle.init()();
  lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, RangedAlertStyle, ForEach<[RangedAlertStyle], RangedAlertStyle, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewV07WorkoutB016RangedAlertStyleOAA7ForEachVySayAHGAhA15ModifiedContentVyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_AA31AccessibilityAttachmentModifierVGGGMd);
  v15 = v24;
  v14 = v25;
  View.pickerStyle<A>(_:)();
  (*(v26 + 8))(v7, v14);
  (*(v8 + 8))(v10, v15);
  LOBYTE(v35) = v22;
  v36 = v21;
  State.wrappedValue.getter();
  v16 = v28;
  outlined init with copy of AlertsEntryView(v23, v28, type metadata accessor for AlertsEntryView);
  v17 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v18 = swift_allocObject();
  outlined init with take of AlertsEntryView(v16, v18 + v17, type metadata accessor for AlertsEntryView);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, ClearListStyle> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type RangedAlertStyle and conformance RangedAlertStyle();
  View.onChange<A>(of:initial:_:)();

  return outlined destroy of Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>>(v12, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0V07WorkoutB0011RangedAlertG0OAA7ForEachVySayANGAnCyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ANQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedhG0VQo_AL09ClearListG033_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
}

uint64_t AlertsEntryView.targetPickerButton()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v33 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AlertsEntryView(0);
  v8 = *(v1 + v7[9]);
  v9 = *(v1 + v7[8]);
  v10 = (v2 + v7[11]);
  v11 = *v10;
  v12 = v10[1];
  v36[0] = v11;
  v36[1] = v12;
  v32 = v8;
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.projectedValue.getter();
  v30 = v35;
  v31 = v34;
  v14 = *(&v35 + 1);
  v15 = v2[4];
  LOBYTE(v34) = *(v2 + 24);
  *&v35 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB016RangedAlertStyleOGMd);
  State.wrappedValue.getter();
  v16 = RangedAlertStyle.displayString.getter(v36[0]);
  v18 = v17;
  v19 = type metadata accessor for PickerButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd);
  State.wrappedValue.getter();
  AlertsEntryView.minimumSelectableValue.getter();
  v21 = v20;
  AlertsEntryView.maximumSelectableValue.getter();
  v23 = v22;
  v34 = *v2;
  v35 = *(v2 + 1);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMd);
  MEMORY[0x20F30B100](v36, v24);
  TargetZone.type.getter();

  v25 = TargetZone.ZoneType.pickerStepInUserUnit(activityType:)(v13);
  result = (*(v4 + 8))(v6, v33);
  v27 = v31;
  *a1 = v32;
  a1[1] = v13;
  v28 = v30;
  a1[2] = v27;
  a1[3] = v28;
  a1[4] = v14;
  a1[5] = v16;
  a1[6] = v18;
  *(a1 + v19[9]) = v21;
  *(a1 + v19[10]) = v23;
  *(a1 + v19[11]) = v25;
  return result;
}

uint64_t AlertsEntryView.rangedPickerButtons()@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v100 = type metadata accessor for TargetZone.PrimaryType();
  v104 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v92 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TargetZone.ZoneType();
  v105 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for PickerButton(0) - 8;
  MEMORY[0x28223BE20](v103);
  v94 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v93 = &v80 - v8;
  MEMORY[0x28223BE20](v9);
  v98 = (&v80 - v10);
  MEMORY[0x28223BE20](v11);
  v13 = (&v80 - v12);
  v14 = type metadata accessor for AlertsEntryView(0);
  v15 = *(v1 + v14[9]);
  v16 = *(v1 + v14[8]);
  v17 = (v1 + v14[12]);
  v18 = *v17;
  v19 = v17[1];
  v109 = v18;
  v110 = v19;
  v99 = v15;
  v20 = v16;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.projectedValue.getter();
  v96 = v106;
  v90 = v107;
  v21 = v108;
  v22 = v14[6];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd);
  v83 = v22;
  v84 = v23;
  State.wrappedValue.getter();
  v89 = TargetZone.ZoneType.headerTextLow(activityType:)();
  v88 = v24;
  v25 = v105 + 8;
  v101 = *(v105 + 8);
  v101(v5, v3);
  v105 = v25;
  State.wrappedValue.getter();
  AlertsEntryView.minimumSelectableValue.getter();
  v27 = v26;
  AlertsEntryView.maximumSelectableValue.getter();
  v29 = v28;
  v30 = v1[1];
  v102 = *v1;
  v86 = v30;
  v85 = v1[2];
  v106 = v102;
  v107 = v30;
  v108 = v85;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMd);
  MEMORY[0x20F30B100](&v109);
  TargetZone.type.getter();

  v31 = TargetZone.ZoneType.pickerStepInUserUnit(activityType:)(v20);
  v32 = v3;
  v33 = v101;
  v101(v5, v3);
  v87 = v13;
  v34 = v99;
  *v13 = v99;
  v13[1] = v20;
  v35 = v90;
  v13[2] = v96;
  v13[3] = v35;
  v13[4] = v21;
  v36 = v88;
  v13[5] = v89;
  v13[6] = v36;
  v37 = v103;
  *(v13 + *(v103 + 44)) = v27;
  *(v13 + *(v37 + 48)) = v29;
  *(v13 + *(v37 + 52)) = v31;
  v38 = v14[13];
  v82 = v1;
  v39 = (v1 + v38);
  v40 = *v39;
  v41 = v39[1];
  v109 = v40;
  v110 = v41;
  v99 = v34;
  v42 = v20;
  State.projectedValue.getter();
  v91 = v106;
  v90 = v107;
  v43 = v108;
  State.wrappedValue.getter();
  v96 = v42;
  v89 = TargetZone.ZoneType.headerTextHigh(activityType:)();
  v88 = v44;
  v33(v5, v32);
  State.wrappedValue.getter();
  AlertsEntryView.minimumSelectableValue.getter();
  v45 = v102;
  v46 = v86;
  v106 = v102;
  v107 = v86;
  v47 = v85;
  v108 = v85;
  v48 = v97;
  MEMORY[0x20F30B100](&v109, v97);
  TargetZone.type.getter();

  v49 = TargetZone.ZoneType.pickerStepInUserUnit(activityType:)(v42);
  v81 = v32;
  v50 = v101;
  v101(v5, v32);
  v106 = v45;
  v107 = v46;
  v51 = v46;
  v52 = v47;
  v108 = v47;
  v53 = v48;
  MEMORY[0x20F30B100](&v109, v48);
  TargetZone.type.getter();

  v54 = v92;
  TargetZone.ZoneType.primaryType.getter();
  v50(v5, v32);
  v55 = v96;
  Double.add(valueInUserUnit:primaryType:activityType:formattingManager:)(v49, v54, v96, v99);
  v57 = v56;
  v58 = *(v104 + 8);
  v104 += 8;
  v84 = v58;
  v58(v54, v100);
  AlertsEntryView.maximumSelectableValue.getter();
  v59 = v102;
  v106 = v102;
  v107 = v51;
  v60 = v52;
  v108 = v52;
  v61 = v53;
  MEMORY[0x20F30B100](&v109, v53);
  TargetZone.type.getter();

  v62 = TargetZone.ZoneType.pickerStepInUserUnit(activityType:)(v55);
  v63 = v81;
  v64 = v101;
  v101(v5, v81);
  v106 = v59;
  v107 = v51;
  v108 = v60;
  MEMORY[0x20F30B100](&v109, v61);
  TargetZone.type.getter();

  TargetZone.ZoneType.primaryType.getter();
  v64(v5, v63);
  v65 = v96;
  v66 = v99;
  Double.add(valueInUserUnit:primaryType:activityType:formattingManager:)(v62, v54, v96, v99);
  v68 = v67;
  v84(v54, v100);
  v106 = v102;
  v107 = v51;
  v108 = v60;
  MEMORY[0x20F30B100](&v109, v97);
  TargetZone.type.getter();

  v69 = TargetZone.ZoneType.pickerStepInUserUnit(activityType:)(v65);
  v64(v5, v63);
  v70 = v98;
  *v98 = v66;
  v70[1] = v65;
  v71 = v90;
  v70[2] = v91;
  v70[3] = v71;
  v70[4] = v43;
  v72 = v88;
  v70[5] = v89;
  v70[6] = v72;
  v73 = v103;
  *(v70 + *(v103 + 44)) = v57;
  *(v70 + *(v73 + 48)) = v68;
  *(v70 + *(v73 + 52)) = v69;
  v74 = v87;
  v75 = v93;
  outlined init with copy of AlertsEntryView(v87, v93, type metadata accessor for PickerButton);
  v76 = v94;
  outlined init with copy of AlertsEntryView(v70, v94, type metadata accessor for PickerButton);
  v77 = v95;
  outlined init with copy of AlertsEntryView(v75, v95, type metadata accessor for PickerButton);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI12PickerButtonV_ACtMd);
  outlined init with copy of AlertsEntryView(v76, v77 + *(v78 + 48), type metadata accessor for PickerButton);
  outlined destroy of PickerButton(v70);
  outlined destroy of PickerButton(v74);
  outlined destroy of PickerButton(v76);
  return outlined destroy of PickerButton(v75);
}

uint64_t closure #2 in AlertsEntryView.body.getter(uint64_t *a1)
{
  v2 = type metadata accessor for TargetZone.PrimaryType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TargetZone.ZoneType();
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AlertsEntryView(0);
  v10 = (a1 + v9[13]);
  v11 = *v10;
  v12 = v10[1];
  v34 = v11;
  v32 = v12;
  v35 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  v13 = v37;
  v14 = (a1 + v9[12]);
  v15 = *v14;
  v16 = v14[1];
  v34 = *v14;
  v35 = v16;
  State.wrappedValue.getter();
  if (v13 <= v37)
  {
    v34 = v15;
    v35 = v16;
    State.wrappedValue.getter();
    v29 = v5;
    v30 = v3;
    v18 = *a1;
    v17 = a1[1];
    v31 = v2;
    v26 = a1[2];
    v27 = v17;
    v34 = v18;
    v35 = v17;
    v36 = v26;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMd);
    MEMORY[0x20F30B100](&v37);
    TargetZone.type.getter();

    v28 = *(a1 + v9[8]);
    v20 = TargetZone.ZoneType.pickerStepInUserUnit(activityType:)(v28);
    v21 = *(v33 + 8);
    v21(v8, v6);
    v34 = v18;
    v35 = v27;
    v36 = v26;
    MEMORY[0x20F30B100](&v37, v19);
    TargetZone.type.getter();

    v22 = v29;
    TargetZone.ZoneType.primaryType.getter();
    v21(v8, v6);
    Double.add(valueInUserUnit:primaryType:activityType:formattingManager:)(v20, v22, v28, *(a1 + v9[9]));
    v24 = v23;
    (*(v30 + 8))(v22, v31);
    v34 = v11;
    v35 = v32;
    v37 = v24;
    State.wrappedValue.setter();
  }

  return AlertsEntryView.updateTargetZone()();
}

void Double.add(valueInUserUnit:primaryType:activityType:formattingManager:)(double a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for TargetZone.PrimaryType();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x277D7DEC0], v7, v9);
  lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType, MEMORY[0x277D7DED8]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v35[2] == v35[0] && v35[3] == v35[1])
  {
    (*(v8 + 8))(v11, v7);

    goto LABEL_5;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  (*(v8 + 8))(v11, v7);

  if (v12)
  {
LABEL_5:
    v13 = FIUIWorkoutActivityType.pacePerUserUnit(pace:formattingManager:)();
    if ([a3 effectiveTypeIdentifier] == 13)
    {
      if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (a1 > -9.22337204e18)
        {
          if (a1 < 9.22337204e18)
          {
            v14 = v13 + a1;
            if (!__OFADD__(v13, a1))
            {
              v15 = FIUIDistanceTypeForActivityType();
              v16 = [a4 unitManager];
              if (v16)
              {
                v17 = v16;
                [v16 distanceInMetersForDistanceInUserUnit:v15 distanceType:v14];
                v19 = v18;

                v20 = objc_opt_self();
                v21 = [v20 hourUnit];
                v22 = [objc_opt_self() quantityWithUnit:v21 doubleValue:1.0];

                v23 = [v20 secondUnit];
                [v22 doubleValueForUnit_];
                v25 = v24;

                MEMORY[0x20F30D360](v19, v25);
                return;
              }

              goto LABEL_27;
            }

            goto LABEL_25;
          }

          goto LABEL_23;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (a1 > -9.22337204e18)
      {
        if (a1 < 9.22337204e18)
        {
          v26 = v13 - a1;
          if (!__OFSUB__(v13, a1))
          {
            v27 = FIUIDistanceTypeForActivityType();
            v28 = [a4 unitManager];
            if (v28)
            {
              v29 = v28;
              v30 = [v28 userDistanceHKUnitForDistanceType_];

              v31 = [objc_opt_self() quantityWithUnit:v30 doubleValue:1.0];
              v32 = [objc_opt_self() meterUnit];
              [v31 doubleValueForUnit_];
              v34 = v33;

              MEMORY[0x20F30D360](v34, v26);
              return;
            }

            goto LABEL_28;
          }

          goto LABEL_26;
        }

        goto LABEL_24;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }
}

uint64_t AlertsEntryView.updateTargetZone()()
{
  v0 = type metadata accessor for TargetZone.ZoneType();
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for AlertsEntryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB016RangedAlertStyleOGMd);
  State.wrappedValue.getter();
  if (v3)
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  State.wrappedValue.getter();
  State.wrappedValue.getter();
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd);
  State.wrappedValue.getter();
  type metadata accessor for TargetZone();
  swift_allocObject();
  TargetZone.init(type:min:max:enabled:)();
  State.wrappedValue.getter();
  if (v3 && v3 != 1)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  dispatch thunk of TargetZone.enabled.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMd);
  return Binding.wrappedValue.setter();
}

uint64_t closure #3 in AlertsEntryView.body.getter(uint64_t *a1)
{
  v2 = type metadata accessor for TargetZone.PrimaryType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TargetZone.ZoneType();
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AlertsEntryView(0);
  v10 = (a1 + v9[12]);
  v11 = *v10;
  v12 = v10[1];
  v34 = v11;
  v32 = v12;
  v35 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  v13 = v37;
  v14 = (a1 + v9[13]);
  v15 = *v14;
  v16 = v14[1];
  v34 = *v14;
  v35 = v16;
  State.wrappedValue.getter();
  if (v37 <= v13)
  {
    v34 = v15;
    v35 = v16;
    State.wrappedValue.getter();
    v29 = v5;
    v30 = v3;
    v18 = *a1;
    v17 = a1[1];
    v31 = v2;
    v26 = a1[2];
    v27 = v17;
    v34 = v18;
    v35 = v17;
    v36 = v26;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMd);
    MEMORY[0x20F30B100](&v37);
    TargetZone.type.getter();

    v28 = *(a1 + v9[8]);
    v20 = TargetZone.ZoneType.pickerStepInUserUnit(activityType:)(v28);
    v21 = *(v33 + 8);
    v21(v8, v6);
    v34 = v18;
    v35 = v27;
    v36 = v26;
    MEMORY[0x20F30B100](&v37, v19);
    TargetZone.type.getter();

    v22 = v29;
    TargetZone.ZoneType.primaryType.getter();
    v21(v8, v6);
    Double.subtract(valueInUserUnit:primaryType:activityType:formattingManager:)(v20, v22, v28, *(a1 + v9[9]));
    v24 = v23;
    (*(v30 + 8))(v22, v31);
    v34 = v11;
    v35 = v32;
    v37 = v24;
    State.wrappedValue.setter();
  }

  return AlertsEntryView.updateTargetZone()();
}

void Double.subtract(valueInUserUnit:primaryType:activityType:formattingManager:)(double a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for TargetZone.PrimaryType();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x277D7DEC0], v7, v9);
  lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType, MEMORY[0x277D7DED8]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v35[2] == v35[0] && v35[3] == v35[1])
  {
    (*(v8 + 8))(v11, v7);

    goto LABEL_5;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  (*(v8 + 8))(v11, v7);

  if (v12)
  {
LABEL_5:
    v13 = FIUIWorkoutActivityType.pacePerUserUnit(pace:formattingManager:)();
    if ([a3 effectiveTypeIdentifier] == 13)
    {
      if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (a1 > -9.22337204e18)
        {
          if (a1 < 9.22337204e18)
          {
            v14 = v13 - a1;
            if (!__OFSUB__(v13, a1))
            {
              v15 = FIUIDistanceTypeForActivityType();
              v16 = [a4 unitManager];
              if (v16)
              {
                v17 = v16;
                [v16 distanceInMetersForDistanceInUserUnit:v15 distanceType:v14];
                v19 = v18;

                v20 = objc_opt_self();
                v21 = [v20 hourUnit];
                v22 = [objc_opt_self() quantityWithUnit:v21 doubleValue:1.0];

                v23 = [v20 secondUnit];
                [v22 doubleValueForUnit_];
                v25 = v24;

                MEMORY[0x20F30D360](v19, v25);
                return;
              }

              goto LABEL_27;
            }

            goto LABEL_25;
          }

          goto LABEL_23;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (a1 > -9.22337204e18)
      {
        if (a1 < 9.22337204e18)
        {
          v26 = v13 + a1;
          if (!__OFADD__(v13, a1))
          {
            v27 = FIUIDistanceTypeForActivityType();
            v28 = [a4 unitManager];
            if (v28)
            {
              v29 = v28;
              v30 = [v28 userDistanceHKUnitForDistanceType_];

              v31 = [objc_opt_self() quantityWithUnit:v30 doubleValue:1.0];
              v32 = [objc_opt_self() meterUnit];
              [v31 doubleValueForUnit_];
              v34 = v33;

              MEMORY[0x20F30D360](v34, v26);
              return;
            }

            goto LABEL_28;
          }

          goto LABEL_26;
        }

        goto LABEL_24;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }
}

uint64_t closure #6 in AlertsEntryView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for AlertConfigurationContext();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AlertsEntryView(0);
  (*(v3 + 16))(v5, a1 + *(v6 + 40), v2);
  if ((*(v3 + 88))(v5, v2) != *MEMORY[0x277D7E4B8])
  {
    return (*(v3 + 8))(v5, v2);
  }

  (*(v3 + 96))(v5, v2);
  v7 = type metadata accessor for ConfigurationType();
  (*(*(v7 - 8) + 8))(v5, v7);
  return AlertsEntryView.updateTargetZone()();
}

uint64_t closure #7 in AlertsEntryView.body.getter(uint64_t *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AlertConfigurationContext();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AlertsEntryView(0);
  (*(v7 + 104))(v9, *MEMORY[0x277D7E4C0], v6);
  v10 = static AlertConfigurationContext.== infix(_:_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v17 = *a1;
    v18 = *(a1 + 1);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMd);
    MEMORY[0x20F30B100](v19, v12);
    v19[3] = type metadata accessor for TargetZone();
    v19[4] = MEMORY[0x277D7DF00];
    v13 = static TargetZoneStorage.save(_:for:useLegacyUniqueIdentifier:)();
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    if ((v13 & 1) == 0)
    {
      static WOLog.app.getter();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_20C66F000, v14, v15, "Failed to save target zone", v16, 2u);
        MEMORY[0x20F30E080](v16, -1, -1);
      }

      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t closure #1 in AlertsEntryView.alertStylePicker()(_BYTE *a1)
{
  v2 = type metadata accessor for AlertConfigurationContext();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 2)
  {
    type metadata accessor for AlertsEntryView(0);
    (*(v3 + 104))(v5, *MEMORY[0x277D7E4C0], v2);
    v6 = static AlertConfigurationContext.== infix(_:_:)();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t closure #2 in AlertsEntryView.alertStylePicker()()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI16RangedAlertStyleOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_07WorkoutB016RangedAlertStyleOQo_AA31AccessibilityAttachmentModifierVGMd);
  lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [RangedAlertStyle] and conformance [A], &_sSay9WorkoutUI16RangedAlertStyleOGMd);
  lazy protocol witness table accessor for type RangedAlertStyle and conformance RangedAlertStyle();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #2 in AlertsEntryView.alertStylePicker()(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_07WorkoutB016RangedAlertStyleOQo_Md);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v6 = *a1;
  v16 = RangedAlertStyle.displayString.getter(v6);
  v17 = v7;
  lazy protocol witness table accessor for type String and conformance String();
  *v5 = Text.init<A>(_:)();
  *(v5 + 1) = v8;
  v5[16] = v9 & 1;
  *(v5 + 3) = v10;
  v5[32] = v6;
  v5[33] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20CB5DA80;
  if (one-time initialization token for picker != -1)
  {
    swift_once();
  }

  v12 = unk_27C7E86F0;
  *(v11 + 32) = static WorkoutAccessibilityIdentifier.AlertsEntryView.picker;
  *(v11 + 40) = v12;

  *(v11 + 48) = RangedAlertStyle.displayString.getter(v6);
  *(v11 + 56) = v13;
  v16 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  BidirectionalCollection<>.joined(separator:)();

  v14 = lazy protocol witness table accessor for type RangedAlertStyle and conformance RangedAlertStyle();
  v16 = MEMORY[0x277CE0BD8];
  v17 = &type metadata for RangedAlertStyle;
  v18 = MEMORY[0x277CE0BC8];
  v19 = v14;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();

  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #4 in AlertsEntryView.alertStylePicker()(uint64_t *a1)
{
  v2 = type metadata accessor for TargetZone.PrimaryType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TargetZone.ZoneType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  LOBYTE(v37) = *(a1 + 24);
  v38 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB016RangedAlertStyleOGMd);
  State.wrappedValue.getter();
  v36 = v7;
  if (LOBYTE(v40) && LOBYTE(v40) == 1)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      return AlertsEntryView.updateTargetZone()();
    }
  }

  v12 = type metadata accessor for AlertsEntryView(0);
  v13 = (a1 + v12[13]);
  v14 = *v13;
  v15 = v13[1];
  v37 = v14;
  v35 = v15;
  v38 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  v16 = v40;
  v17 = (a1 + v12[12]);
  v18 = *v17;
  v19 = v17[1];
  v37 = *v17;
  v38 = v19;
  State.wrappedValue.getter();
  if (v16 <= v40)
  {
    v37 = v18;
    v38 = v19;
    State.wrappedValue.getter();
    v33 = v3;
    v34 = v2;
    v20 = *a1;
    v32 = v5;
    v21 = a1[1];
    v29 = a1[2];
    v30 = v20;
    v37 = v20;
    v38 = v21;
    v39 = v29;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMd);
    MEMORY[0x20F30B100](&v40);
    TargetZone.type.getter();

    v31 = *(a1 + v12[8]);
    v23 = TargetZone.ZoneType.pickerStepInUserUnit(activityType:)(v31);
    v24 = *(v36 + 8);
    v24(v9, v6);
    v37 = v30;
    v38 = v21;
    v39 = v29;
    MEMORY[0x20F30B100](&v40, v22);
    TargetZone.type.getter();

    v25 = v32;
    TargetZone.ZoneType.primaryType.getter();
    v24(v9, v6);
    Double.add(valueInUserUnit:primaryType:activityType:formattingManager:)(v23, v25, v31, *(a1 + v12[9]));
    v27 = v26;
    (*(v33 + 8))(v25, v34);
    v37 = v14;
    v38 = v35;
    v40 = v27;
    State.wrappedValue.setter();
  }

  return AlertsEntryView.updateTargetZone()();
}

uint64_t closure #1 in AlertsEntryView.alertTypePicker()(uint64_t a1)
{
  v2 = type metadata accessor for AlertsEntryView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v9[1] = *(a1 + *(v5 + 36));
  swift_getKeyPath();
  outlined init with copy of AlertsEntryView(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlertsEntryView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  outlined init with take of AlertsEntryView(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for AlertsEntryView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore10TargetZoneC0D4TypeOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_11WorkoutCore10TargetZoneC0M4TypeOQo_0jB015BodyHyphenationVGMd);
  lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [TargetZone.ZoneType] and conformance [A], &_sSay11WorkoutCore10TargetZoneC0D4TypeOGMd);
  lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80]);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation> and conformance <> ModifiedContent<A, B>();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in AlertsEntryView.alertTypePicker()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AlertsEntryView(0);
  TargetZone.ZoneType.displayString(activityType:)();
  lazy protocol witness table accessor for type String and conformance String();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA24_TagTraitWritingModifierVy11WorkoutCore10TargetZoneC0M4TypeOGGMd) + 36);
  v12 = type metadata accessor for TargetZone.ZoneType();
  (*(*(v12 - 8) + 16))(v11, a1, v12);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_TagTraitWritingModifierVy11WorkoutCore10TargetZoneC0J4TypeOGMd);
  *(v11 + *(result + 36)) = 1;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA7SectionVyAA05EmptyG0VAA0G0PAAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA4TextV11WorkoutCore10TargetZoneC0Q4TypeOAA7ForEachVySayAXGAxA08ModifiedE0VyAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAS_AXQo_0nB015BodyHyphenationVGGG_AA07DefaultlK0VQo_AKGSg_AIyAkmAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyA1_yAmAEANyQrqd__AaORd__lFQOyAQyAKA5_011RangedAlertK0OAZySayA20_GA20_A1_yAmAEA2__A3_Qrqd___SbtSHRd__lFQOyAS_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedlK0VQo_A5_09ClearListK033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_AKGAIyAKA5_0L6ButtonVAKGSgAIyAsGyA38__A38_tGAKGSgtGAGyA35__A13_SgA38_SgA41_SgtGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA7SectionVyAA05EmptyF0VAA0F0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAA4TextV11WorkoutCore10TargetZoneC0P4TypeOAA7ForEachVySayAVGAvA08ModifiedD0VyAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAQ_AVQo_0mB015BodyHyphenationVGGG_AA07DefaultkJ0VQo_AIGSg_AGyAikAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyA_yAkAEALyQrqd__AaMRd__lFQOyAOyAIA3_011RangedAlertJ0OAXySayA18_GA18_A_yAkAEA0__A1_Qrqd___SbtSHRd__lFQOyAQ_A18_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedkJ0VQo_A3_09ClearListJ033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A18_Qo_AIGAGyAIA3_0K6ButtonVAIGSgAGyAqEyA36__A36_tGAIGSgtGAEyA33__A11_SgA36_SgA39_SgtGGMd);
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA4TextV11WorkoutCore10TargetZoneC0N4TypeOAA7ForEachVySayATGAtA15ModifiedContentVyAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_0kB015BodyHyphenationVGGG_AA07DefaultiH0VQo_AGGSg_AEyAgiAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAYyAiAEAJyQrqd__AaKRd__lFQOyAMyAGA1_011RangedAlertH0OAVySayA16_GA16_AYyAiAEAZ_A_Qrqd___SbtSHRd__lFQOyAO_A16_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentediH0VQo_A1_09ClearListH033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A16_Qo_AGGAEyAGA1_0I6ButtonVAGGSgAEyAoCyA34__A34_tGAGGSgtGMd);
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAeAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyD0V07WorkoutB0011RangedAlertL0OAA7ForEachVySayASGAsJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedmL0VQo_AQ09ClearListL033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo__AeAEAKyQrqd__AaLRd__lFQOyANyAZ0O4Core10TargetZoneC8ZoneTypeOAUySayA17_GA17_AJyAeAEAW_AXQrqd___SbtSHRd__lFQOyAZ_A17_Qo_AQ15BodyHyphenationVGGG_AA07DefaultmL0VQo_SgAQ0M6ButtonVSgACyA30__A30_tGSgtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_80()
{
  v1 = (type metadata accessor for AlertsEntryView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[8];
  v4 = type metadata accessor for TargetZone.ZoneType();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd);

  v5 = v1[12];
  v6 = type metadata accessor for AlertConfigurationContext();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in AlertsEntryView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AlertsEntryView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t PickerButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA19_ConditionalContentVy07WorkoutB0010PacePickerG0VAN06AlertsmG0VGGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB014PacePickerViewVAF06AlertshI0VGAA14NavigationLinkVyAA6VStackVyAA05TupleI0VyAA4TextV_AStGGAKG_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  v10 = static Platform.current.getter();
  if (v10)
  {
    v13[0] = v13;
    MEMORY[0x28223BE20](v10);
    v13[1] = a1;
    v13[-2] = v1;
    PickerButton.pickerView()(&v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PacePickerViewVAD06AlertsgH0VGMd);
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, Text)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<PacePickerView, AlertsPickerView> and conformance <> _ConditionalContent<A, B>();
    NavigationLink.init(destination:label:)();
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<VStack<TupleView<(Text, Text)>>, _ConditionalContent<PacePickerView, AlertsPickerView>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA19_ConditionalContentVy07WorkoutB0010PacePickerG0VAN06AlertsmG0VGGMd);
    _ConditionalContent<>.init(storage:)();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    PickerButton.pickerView()(&v14);
    v12 = v15;
    *v9 = v14;
    v9[8] = v12;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PacePickerViewVAD06AlertsgH0VGMd);
    lazy protocol witness table accessor for type _ConditionalContent<PacePickerView, AlertsPickerView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<VStack<TupleView<(Text, Text)>>, _ConditionalContent<PacePickerView, AlertsPickerView>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA19_ConditionalContentVy07WorkoutB0010PacePickerG0VAN06AlertsmG0VGGMd);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t PickerButton.pickerView()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v110 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10TargetZoneC0D4TypeOSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v108 = &v107 - v4;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  v112 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v111 = &v107 - v5;
  v6 = type metadata accessor for TargetZone.ZoneType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v117 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v109 = &v107 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v107 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v107 - v15;
  v119 = type metadata accessor for PickerButton(0);
  v17 = v119[8];
  v18 = *MEMORY[0x277D7DE48];
  v116 = *(v7 + 104);
  v116(v16, v18, v6);
  lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v118 = v6;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v125 == v122 && v126 == v123)
  {
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v20 = v16;
  v21 = v118;
  v113 = *(v7 + 8);
  v114 = v7 + 8;
  v113(v20, v118);

  v22 = v17;
  if (v19)
  {
    goto LABEL_14;
  }

  v116(v13, *MEMORY[0x277D7DE40], v21);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v125 == v122 && v126 == v123)
  {
    v113(v13, v21);

    v22 = v17;
    goto LABEL_14;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v113(v13, v21);

  v22 = v17;
  if (v23)
  {
    goto LABEL_14;
  }

  v24 = v109;
  v116(v109, *MEMORY[0x277D7DE60], v21);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v125 == v122 && v126 == v123)
  {
    v113(v24, v21);

    goto LABEL_14;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v113(v24, v21);

  if (v25)
  {
LABEL_14:
    v26 = v21;
    v27 = *v2;
    v28 = *(v2 + 8);
    v31 = *(v7 + 16);
    v29 = (v7 + 16);
    v30 = v31;
    v32 = (v2 + v22);
    v33 = v117;
    v31(v117, v32, v26);
    static Platform.current.getter();
    v34 = Platform.rawValue.getter();
    if (v34 == Platform.rawValue.getter())
    {
      v36 = *(v2 + 40);
      object = *(v2 + 48);
    }

    else
    {
      v36 = 0;
      object = 0;
    }

    v37 = v119;
    v38 = *(v2 + 24);
    v39 = *(v2 + 32);
    v125 = *(v2 + 16);
    v126 = v38;
    v127 = v39;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
    result = Binding.projectedValue.getter();
    v41 = *(v2 + v37[11]);
    if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_57:
      __break(1u);
    }

    else if (v41 > -9.22337204e18)
    {
      if (v41 < 9.22337204e18)
      {
        v108 = v36;
        v109 = v29;
        v43 = v122;
        v42 = v123;
        v44 = v124;
        v119 = v41;
        type metadata accessor for PacePickerViewModel();
        v45 = swift_allocObject();
        v46 = OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel__currentPaceDisplay;
        v125 = 0;
        v126 = 0xE000000000000000;
        v47 = v111;
        Published.init(initialValue:)();
        v48 = v47;
        v49 = v43;
        (*(v112 + 32))(&v45[v46], v48, v115);
        *&v45[OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_pickerArray] = MEMORY[0x277D84F90];
        *(v45 + 2) = v43;
        *(v45 + 3) = v42;
        *(v45 + 4) = v44;
        *&v45[OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_activityType] = v28;
        *&v45[OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_formattingManager] = v27;
        v30(&v45[OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_targetZoneType], v33, v118);

        v115 = v42;

        v50 = v28;
        v51 = v27;
        [v50 effectiveTypeIdentifier];
        v52 = FIUIDistanceTypeForActivityType();
        MEMORY[0x20F30D340](v52);
        if (object)
        {
          countAndFlagsBits = v108;
        }

        else
        {
          v54 = String.workoutLocalized()();
          countAndFlagsBits = v54._countAndFlagsBits;
          object = v54._object;
        }

        v55 = &v45[OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_pickerTitle];
        *v55 = countAndFlagsBits;
        v55[1] = object;
        v56 = v119;
        *&v45[OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_step] = v119;
        *&v45[OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_minimumSelectablePace] = FIUIWorkoutActivityType.pacePerUserUnit(pace:formattingManager:)();
        *&v45[OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_maximumSelectablePace] = FIUIWorkoutActivityType.pacePerUserUnit(pace:formattingManager:)();
        v125 = v49;
        v126 = v115;
        v127 = v44;
        MEMORY[0x20F30B100](&v122, v116);
        v57 = FIUIWorkoutActivityType.pacePerUserUnit(pace:formattingManager:)();
        swift_beginAccess();
        v122 = v57;
        Published.init(initialValue:)();
        result = swift_endAccess();
        if (v56)
        {
          v112 = v49;
          v58 = *&v45[OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_maximumSelectablePace];
          v59 = *&v45[OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_minimumSelectablePace];
          v60 = v58 >= v59;
          if (v56 > 0)
          {
            v60 = v59 >= v58;
          }

          if (!v60)
          {
            v68 = OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_pickerArray;
            do
            {
              v70 = v59 + v56;
              v71 = __OFADD__(v59, v56);
              if (__OFADD__(v59, v56))
              {
                v72 = (v70 >> 63) ^ 0x8000000000000000;
              }

              else
              {
                v72 = v59 + v56;
              }

              v73 = *&v45[v68];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v45[v68] = v73;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1, v73);
                *&v45[v68] = v73;
              }

              v76 = *(v73 + 2);
              v75 = *(v73 + 3);
              if (v76 >= v75 >> 1)
              {
                v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v73);
              }

              *(v73 + 2) = v76 + 1;
              *&v73[8 * v76 + 32] = v59;
              *&v45[v68] = v73;
              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              if (v59 < v125)
              {
                swift_getKeyPath();
                swift_getKeyPath();
                static Published.subscript.getter();

                if (v71)
                {
                  __break(1u);
                  goto LABEL_57;
                }

                if (v125 < v70)
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  static Published.subscript.getter();

                  v77 = v125;
                  v78 = *&v45[v68];
                  v79 = swift_isUniquelyReferenced_nonNull_native();
                  *&v45[v68] = v78;
                  if ((v79 & 1) == 0)
                  {
                    v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
                    *&v45[v68] = v78;
                  }

                  v81 = *(v78 + 2);
                  v80 = *(v78 + 3);
                  if (v81 >= v80 >> 1)
                  {
                    v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v78);
                  }

                  *(v78 + 2) = v81 + 1;
                  *&v78[8 * v81 + 32] = v77;
                  *&v45[v68] = v78;
                }
              }

              v69 = v58 >= v72;
              v56 = v119;
              if (v119 > 0)
              {
                v69 = v72 >= v58;
              }

              v59 = v72;
            }

            while (!v69);
          }

          v61 = *(v45 + 3);
          v62 = *(v45 + 4);
          v125 = *(v45 + 2);
          v126 = v61;
          v127 = v62;
          MEMORY[0x20F30B100](&v122, v116);
          v63 = TargetZone.ZoneType.valueAndUnitString(activityType:formattingManager:value:)();
          v65 = v64;
          swift_getKeyPath();
          swift_getKeyPath();
          v125 = v63;
          v126 = v65;

          static Published.subscript.setter();

          v113(v117, v118);
          v122 = v45;
          LOBYTE(v123) = 0;
          goto LABEL_28;
        }

        goto LABEL_60;
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    __break(1u);
    goto LABEL_59;
  }

  v83 = *v2;
  v82 = *(v2 + 8);
  v84 = v108;
  (*(v7 + 16))(v108, v2 + v22, v21);
  (*(v7 + 56))(v84, 0, 1, v21);
  v85 = *(v2 + 24);
  v86 = *(v2 + 32);
  v125 = *(v2 + 16);
  v126 = v85;
  v127 = v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
  Binding.projectedValue.getter();
  v88 = v122;
  v89 = v123;
  v90 = *(v2 + v119[9]);
  v91 = v124;
  v92 = *(v2 + v119[10]);
  v93 = *(v2 + v119[11]);
  static Platform.current.getter();
  v94 = Platform.rawValue.getter();
  if (v94 == Platform.rawValue.getter())
  {
    v96 = *(v2 + 40);
    v95 = *(v2 + 48);
  }

  else
  {
    v96 = TargetZone.ZoneType.stepperText(activityType:)(v82);
    v95 = v97;
  }

  type metadata accessor for AlertsPickerViewModel();
  v98 = swift_allocObject();
  v99 = OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel__currentValueDisplay;
  v125 = 0;
  v126 = 0xE000000000000000;
  v100 = v111;
  Published.init(initialValue:)();
  (*(v112 + 32))(&v98[v99], v100, v115);
  *(v98 + 2) = v88;
  *(v98 + 3) = v89;
  *(v98 + 4) = v91;
  v125 = v88;
  v126 = v89;
  v127 = v91;

  MEMORY[0x20F30B100](&v121, v87);
  v101 = v121;
  swift_beginAccess();
  v120 = v101;
  Published.init(initialValue:)();
  swift_endAccess();
  *&v98[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_minimumSelectableValue] = v90;
  *&v98[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_maximumSelectableValue] = v92;
  *&v98[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_step] = v93;
  v102 = &v98[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_pickerText];
  *v102 = v96;
  v102[1] = v95;
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
  result = Color.init(uiColor:)();
  *&v98[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_color] = result;
  if (v93 != 0.0)
  {
    specialized _copySequenceToContiguousArray<A>(_:)(v90, v92, v93);
    *&v98[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_pickerValues] = v103;
    *&v98[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_activityType] = v82;
    *&v98[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_formattingManager] = v83;
    v104 = v108;
    outlined init with copy of PickerButton?(v108, &v98[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_targetZoneType], &_s11WorkoutCore10TargetZoneC0D4TypeOSgMd);
    v105 = v82;
    v106 = v83;
    AlertsPickerViewModel.updateValueDisplay()();

    outlined destroy of TupleView<(PickerButton, PickerButton)>?(v104, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMd);
    v122 = v98;
    LOBYTE(v123) = 1;
LABEL_28:
    lazy protocol witness table accessor for type PacePickerView and conformance PacePickerView();
    lazy protocol witness table accessor for type AlertsPickerView and conformance AlertsPickerView();
    result = _ConditionalContent<>.init(storage:)();
    v66 = v126;
    v67 = v110;
    *v110 = v125;
    *(v67 + 8) = v66;
    return result;
  }

LABEL_61:
  __break(1u);
  return result;
}

__n128 closure #2 in PickerButton.navigationLinkPickerView()@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  closure #1 in closure #2 in PickerButton.navigationLinkPickerView()(a1, v7);
  *&v6[55] = v7[3];
  *&v6[39] = v7[2];
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *(a2 + 65) = *&v6[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v6[63];
  *(a2 + 17) = *v6;
  return result;
}

uint64_t closure #1 in closure #2 in PickerButton.navigationLinkPickerView()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[6];
  v36 = a1[5];
  v37 = v4;
  lazy protocol witness table accessor for type String and conformance String();

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Color.gray.getter();
  v10 = Text.foregroundColor(_:)();
  v32 = v11;
  v33 = v10;
  v31 = v12;
  v34 = v13;

  outlined consume of Text.Storage(v5, v7, v9 & 1);

  type metadata accessor for PickerButton(0);
  v14 = a1[3];
  v15 = a1[4];
  v36 = a1[2];
  v37 = v14;
  v38 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
  MEMORY[0x20F30B100](&v35, v16);
  v36 = TargetZone.ZoneType.valueAndUnitString(activityType:formattingManager:value:)();
  v37 = v17;
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  static Color.white.getter();
  v23 = Text.foregroundColor(_:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  outlined consume of Text.Storage(v18, v20, v22 & 1);

  LOBYTE(v36) = v31 & 1;
  LOBYTE(v35) = v27 & 1;
  *a2 = v33;
  *(a2 + 8) = v32;
  *(a2 + 16) = v31 & 1;
  *(a2 + 24) = v34;
  *(a2 + 32) = v23;
  *(a2 + 40) = v25;
  *(a2 + 48) = v27 & 1;
  *(a2 + 56) = v29;
  outlined copy of Text.Storage(v33, v32, v31 & 1);

  outlined copy of Text.Storage(v23, v25, v27 & 1);

  outlined consume of Text.Storage(v23, v25, v27 & 1);

  outlined consume of Text.Storage(v33, v32, v31 & 1);
}

uint64_t lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AlertsEntryView(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of TupleView<(PickerButton, PickerButton)>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AlertsEntryView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_11WorkoutCore10TargetZoneC0M4TypeOQo_0jB015BodyHyphenationVGMd);
    type metadata accessor for TargetZone.ZoneType();
    lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type BodyHyphenation and conformance BodyHyphenation();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, ClearListStyle> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, ClearListStyle> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, ClearListStyle> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0V07WorkoutB0011RangedAlertG0OAA7ForEachVySayANGAnCyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ANQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedhG0VQo_AL09ClearListG033_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA9EmptyViewV07WorkoutB016RangedAlertStyleOAA7ForEachVySayAHGAhA15ModifiedContentVyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_AA31AccessibilityAttachmentModifierVGGGMd);
    type metadata accessor for SegmentedPickerStyle();
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, RangedAlertStyle, ForEach<[RangedAlertStyle], RangedAlertStyle, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewV07WorkoutB016RangedAlertStyleOAA7ForEachVySayAHGAhA15ModifiedContentVyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_AA31AccessibilityAttachmentModifierVGGGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ClearListStyle and conformance ClearListStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, ClearListStyle> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in AlertsEntryView.alertTypePicker()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AlertsEntryView(0);

  return closure #1 in closure #1 in AlertsEntryView.alertTypePicker()(a1, a2);
}

uint64_t outlined init with copy of AlertsEntryView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PickerButton(uint64_t a1)
{
  v2 = type metadata accessor for PickerButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation>> and conformance <> ForEach<A, B, C>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_07WorkoutB016RangedAlertStyleOQo_AA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type RangedAlertStyle and conformance RangedAlertStyle();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata completion function for PickerButton()
{
  _sSo23FIUIWorkoutActivityTypeCMaTm_10(319, &lazy cache variable for type metadata for FIUIFormattingManager);
  if (v0 <= 0x3F)
  {
    _sSo23FIUIWorkoutActivityTypeCMaTm_10(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
    if (v1 <= 0x3F)
    {
      type metadata accessor for State<RangedAlertStyle>(319, &lazy cache variable for type metadata for Binding<Double>, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for TargetZone.ZoneType();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for State<RangedAlertStyle>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<PacePickerView, AlertsPickerView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<PacePickerView, AlertsPickerView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<PacePickerView, AlertsPickerView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PacePickerViewVAD06AlertsgH0VGMd);
    lazy protocol witness table accessor for type PacePickerView and conformance PacePickerView();
    lazy protocol witness table accessor for type AlertsPickerView and conformance AlertsPickerView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<PacePickerView, AlertsPickerView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PacePickerView and conformance PacePickerView()
{
  result = lazy protocol witness table cache variable for type PacePickerView and conformance PacePickerView;
  if (!lazy protocol witness table cache variable for type PacePickerView and conformance PacePickerView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacePickerView and conformance PacePickerView);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of PickerButton?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TupleView<(PickerButton, PickerButton)>?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PacePickerView, AlertsPickerView>, NavigationLink<VStack<TupleView<(Text, Text)>>, _ConditionalContent<PacePickerView, AlertsPickerView>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PacePickerView, AlertsPickerView>, NavigationLink<VStack<TupleView<(Text, Text)>>, _ConditionalContent<PacePickerView, AlertsPickerView>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PacePickerView, AlertsPickerView>, NavigationLink<VStack<TupleView<(Text, Text)>>, _ConditionalContent<PacePickerView, AlertsPickerView>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PacePickerViewVAD06AlertsgH0VGAA14NavigationLinkVyAA6VStackVyAA05TupleH0VyAA4TextV_AQtGGAIGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<PacePickerView, AlertsPickerView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<VStack<TupleView<(Text, Text)>>, _ConditionalContent<PacePickerView, AlertsPickerView>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA19_ConditionalContentVy07WorkoutB0010PacePickerG0VAN06AlertsmG0VGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<PacePickerView, AlertsPickerView>, NavigationLink<VStack<TupleView<(Text, Text)>>, _ConditionalContent<PacePickerView, AlertsPickerView>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

id WorkoutSafetyCheckIn.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t WorkoutSafetyCheckIn.isMessagesAppInstalled.getter()
{
  return WorkoutSafetyCheckIn.isMessagesAppInstalled.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

char *WorkoutSafetyCheckIn.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - v3;
  v5 = OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn__isMessagesAppInstalled;
  v17 = 1;
  Published.init(initialValue:)();
  v6 = *(v2 + 32);
  v6(&v0[v5], v4, v1);
  v7 = OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn__isIMessageAccountEnabled;
  v17 = 1;
  Published.init(initialValue:)();
  v6(&v0[v7], v4, v1);
  v0[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_isMessageAppInstalledInitialized] = 0;
  v0[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_isIMessageAccountEnabledInitialized] = 0;
  if ([objc_opt_self() zelkovaWorkoutEnabled])
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D4AB68]) init];
  }

  else
  {
    v8 = 0;
  }

  *&v0[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_sessionManager] = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277D4AA68]) init];
  *&v0[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_appDeletionManager] = v9;
  v10 = type metadata accessor for WorkoutSafetyCheckIn();
  v16.receiver = v0;
  v16.super_class = v10;
  v11 = objc_msgSendSuper2(&v16, sel_init);
  v12 = *&v11[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_appDeletionManager];
  v13 = v11;
  [v12 addObserver_];
  type metadata accessor for DispatchUtilities();
  *(swift_allocObject() + 16) = v13;
  static DispatchUtilities.ensureMainQueueOrAsync(block:)();

  return v13;
}

uint64_t type metadata accessor for WorkoutSafetyCheckIn()
{
  result = type metadata singleton initialization cache for WorkoutSafetyCheckIn;
  if (!type metadata singleton initialization cache for WorkoutSafetyCheckIn)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void closure #1 in WorkoutSafetyCheckIn.init()(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_sessionManager];
  if (v1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    v6[4] = partial apply for closure #1 in closure #1 in WorkoutSafetyCheckIn.init();
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
    v6[3] = &block_descriptor_70;
    v4 = _Block_copy(v6);
    v5 = a1;

    [v1 checkIMessageAccountEnabledWithHandler_];
    _Block_release(v4);
  }
}

uint64_t closure #1 in closure #1 in WorkoutSafetyCheckIn.init()(char a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    static WOLog.safety.getter();
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = a2;
      v22 = v14;
      *v13 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v15 = Optional.description.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v22);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_20C66F000, v11, v12, "[SafetyCheckIn] error when fetching iMessage account enabled status: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x20F30E080](v14, -1, -1);
      MEMORY[0x20F30E080](v13, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    type metadata accessor for DispatchUtilities();
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a1 & 1;
    v20 = a3;
    static DispatchUtilities.ensureMainQueueOrAsync(block:)();
  }
}

uint64_t closure #1 in closure #1 in closure #1 in WorkoutSafetyCheckIn.init()(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  result = static Published.subscript.setter();
  v2[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_isIMessageAccountEnabledInitialized] = 1;
  if (v2[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_isMessageAppInstalledInitialized] == 1)
  {
    return WorkoutSafetyCheckIn.submitCheckInButtonDisplayedMetric()();
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id WorkoutSafetyCheckIn.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.safety.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20C66F000, v6, v7, "[SafetyCheckIn] deinit", v8, 2u);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for WorkoutSafetyCheckIn();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

Swift::Void __swiftcall WorkoutSafetyCheckIn.removeAppDeletionManagerObserver()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.safety.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20C66F000, v6, v7, "[SafetyCheckIn] removeAppDeletionManagerObserver", v8, 2u);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  [*(v1 + OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_appDeletionManager) removeObserver_];
}

uint64_t closure #7 in WorkoutSafetyCheckIn.shouldDisplaySafetyCheckIn(for:startSource:startPoolSwim:completion:)(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v53 = a4;
  v54 = a5;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v51 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  static WOLog.safety.getter();
  v17 = a1;
  v18 = a3;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v50 = v9;
    v52 = v8;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138413058;
    *(v21 + 4) = v17;
    *v22 = a1;
    *(v21 + 12) = 1024;
    *(v21 + 14) = a2 & 1;
    *(v21 + 18) = 2112;
    v23 = v17;
    if (a3)
    {
      v24 = a3;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = v25;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    *(v21 + 20) = v25;
    v22[1] = v26;
    *(v21 + 28) = 2112;
    v27 = [objc_opt_self() currentThread];
    *(v21 + 30) = v27;
    v22[2] = v27;
    _os_log_impl(&dword_20C66F000, v19, v20, "[SafetyCheckIn] fetched current session state: %@, isActiveDevice: %{BOOL}d, error: %@, thread: %@", v21, 0x26u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v22, -1, -1);
    MEMORY[0x20F30E080](v21, -1, -1);
    v8 = v52;
    v9 = v50;
  }

  v28 = *(v9 + 8);
  v28(v16, v8);
  if (a1)
  {
    v29 = v17;
    v30 = [v29 isActiveState] ^ 1;
    static WOLog.safety.getter();
    v31 = v29;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v52 = v8;
      v35 = v34;
      v36 = swift_slowAlloc();
      *v35 = 67109378;
      *(v35 + 4) = v30;
      *(v35 + 8) = 2112;
      *(v35 + 10) = v31;
      *v36 = a1;
      v37 = v31;
      _os_log_impl(&dword_20C66F000, v32, v33, "[SafetyCheckIn] display prompt: %{BOOL}d, current session state: %@", v35, 0x12u);
      outlined destroy of NSObject?(v36);
      MEMORY[0x20F30E080](v36, -1, -1);
      v38 = v35;
      v8 = v52;
      MEMORY[0x20F30E080](v38, -1, -1);
    }

    v28(v14, v8);
    type metadata accessor for DispatchUtilities();
    v39 = swift_allocObject();
    *(v39 + 16) = v53;
    *(v39 + 24) = v54;
    *(v39 + 32) = v30;

    static DispatchUtilities.ensureMainQueueOrAsync(block:)();
  }

  else
  {
    v40 = v51;
    static WOLog.safety.getter();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v8;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = 0;
      *v45 = 0;
      _os_log_impl(&dword_20C66F000, v41, v42, "[SafetyCheckIn] current session state in not available: %@, not displaying prompt", v44, 0xCu);
      outlined destroy of NSObject?(v45);
      MEMORY[0x20F30E080](v45, -1, -1);
      v46 = v44;
      v8 = v43;
      MEMORY[0x20F30E080](v46, -1, -1);
    }

    v28(v40, v8);
    type metadata accessor for DispatchUtilities();
    v47 = swift_allocObject();
    *(v47 + 16) = v53;
    *(v47 + 24) = v54;

    static DispatchUtilities.ensureMainQueueOrAsync(block:)();
  }
}

BOOL WorkoutConfiguration.supportsSafetyCheckInPrompt.getter()
{
  type metadata accessor for MultiSportWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v1 = v0;
    v2 = MultiSportWorkoutConfiguration.subConfigs.getter();
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_19:
      v5 = __CocoaSet.count.getter();
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v7 = 0;
    while (v5 != v6)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x20F30C990](v6, v3);
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_17;
        }

        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = dispatch thunk of WorkoutConfiguration.activityType.getter();
      v11 = [v10 supportsSafetyCheckInPrompt];

      v12 = __OFADD__(v7, v11);
      v7 += v11;
      ++v6;
      if (v12)
      {
        goto LABEL_18;
      }
    }

    return v7 > 0;
  }

  else
  {
    v14 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    v15 = [v14 supportsSafetyCheckInPrompt];

    return v15;
  }
}

uint64_t WorkoutSafetyCheckIn.showCheckInSessionButton.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() zelkovaWorkoutEnabled];
  type metadata accessor for SafetyMonitorCoordinator();
  v7 = static SafetyMonitorCoordinator.shared.getter();
  v8 = dispatch thunk of SafetyMonitorCoordinator.shouldDisallowBasedOnRegulatoryDomain.getter();

  v9 = 0;
  if (v6 && (v8 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v19 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v9 = v18;
    }

    else
    {
      v9 = 0;
    }
  }

  static WOLog.safety.getter();
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v17 = v3;
    v14 = v13;
    *v13 = 67110144;
    *(v13 + 4) = v9;
    *(v13 + 8) = 1024;
    *(v13 + 10) = v6;
    *(v13 + 14) = 1024;
    *(v13 + 16) = v8 & 1;
    *(v13 + 20) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v14 + 22) = v21;

    *(v14 + 26) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v14 + 28) = v20;

    _os_log_impl(&dword_20C66F000, v11, v12, "[SafetyCheckIn] showCheckInSessionButton: %{BOOL}d (Zelkova_Workout feature flag enabled: %{BOOL}d, shouldDisallowBasedOnRegulatoryDomain: %{BOOL}d, isMessagesAppInstalled: %{BOOL}d, isIMessageAccountEnabled: %{BOOL}d", v14, 0x20u);
    v15 = v14;
    v3 = v17;
    MEMORY[0x20F30E080](v15, -1, -1);
  }

  else
  {

    v11 = v10;
  }

  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t WorkoutSafetyCheckIn.submitCheckInButtonDisplayedMetric()()
{
  v0 = type metadata accessor for MetricsManager.CheckInButtonNotDisplayedReason();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  WorkoutSafetyCheckIn.showCheckInSessionButton.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6[15] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v6[14] == 1)
    {
      v4 = MEMORY[0x277D4AF28];
    }

    else
    {
      v4 = MEMORY[0x277D4AF20];
    }

    (*(v1 + 104))(v3, *v4, v0);
  }

  else
  {
    (*(v1 + 104))(v3, *MEMORY[0x277D4AF18], v0);
  }

  type metadata accessor for MetricsManager();
  static MetricsManager.submitFitnessCheckInButtonDisplayed(isDisplayed:notDisplayedReason:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutSafetyCheckIn@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutSafetyCheckIn();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t WorkoutSafetyCheckIn.onMessagesAppInstalled()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = v17;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

uint64_t closure #1 in WorkoutSafetyCheckIn.onMessagesAppInstalled()(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  result = static Published.subscript.setter();
  v2[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_isMessageAppInstalledInitialized] = 1;
  if (v2[OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_isIMessageAccountEnabledInitialized] == 1)
  {
    return WorkoutSafetyCheckIn.submitCheckInButtonDisplayedMetric()();
  }

  return result;
}

uint64_t key path getter for WorkoutSafetyCheckIn.isMessagesAppInstalled : WorkoutSafetyCheckIn@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for WorkoutSafetyCheckIn.isMessagesAppInstalled : WorkoutSafetyCheckIn(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  result = static Published.subscript.setter();
  v11[*a7] = 1;
  if (v11[*a8] == 1)
  {
    return WorkoutSafetyCheckIn.submitCheckInButtonDisplayedMetric()();
  }

  return result;
}

uint64_t specialized static WorkoutSafetyCheckIn.isSafetyCheckInAvailable(for:)(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  if (a1 <= 0x14 && ((1 << a1) & 0x180500) != 0)
  {
    static WOLog.safety.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v39 = v12;
      *v11 = 136315138;
      v13 = NLWorkoutStartSourceDescription();
      if (v13)
      {
        v14 = v13;
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v37 = v15;
      v38 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
      v27 = Optional.description.getter();
      v29 = v28;

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v39);

      *(v11 + 4) = v30;
      _os_log_impl(&dword_20C66F000, v9, v10, "[SafetyCheckIn] unavailable for startSource: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x20F30E080](v12, -1, -1);
      MEMORY[0x20F30E080](v11, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    return 0;
  }

  else
  {
    static WOLog.safety.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39 = v21;
      *v20 = 136315138;
      v22 = NLWorkoutStartSourceDescription();
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v37 = v24;
      v38 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
      v32 = Optional.description.getter();
      v34 = v33;

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v39);

      *(v20 + 4) = v35;
      _os_log_impl(&dword_20C66F000, v18, v19, "[SafetyCheckIn] available for startSource: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x20F30E080](v21, -1, -1);
      MEMORY[0x20F30E080](v20, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 1;
  }
}

uint64_t specialized static WorkoutSafetyCheckIn.isSafetyCheckInAvailable(for:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - v7;
  LODWORD(v9) = WorkoutConfiguration.supportsSafetyCheckInPrompt.getter();
  if (v9)
  {
    static WOLog.safety.getter();
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v42 = v9;
      v9 = v15;
      v43 = v15;
      *v13 = 136315394;
      type metadata accessor for MultiSportWorkoutConfiguration();
      v16 = swift_dynamicCastClass();
      v17 = v16 == 0;
      if (v16)
      {
        v18 = 0x707369746C756D20;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v19 = 0xE000000000000000;
      }

      else
      {
        v19 = 0xEB0000000074726FLL;
      }

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v43);
      v41 = v2;
      v21 = v20;

      *(v13 + 4) = v21;
      *(v13 + 12) = 2112;
      *(v13 + 14) = v10;
      *v14 = v10;
      v22 = v10;
      _os_log_impl(&dword_20C66F000, v11, v12, "[SafetyCheckIn] available for%s configuration: %@", v13, 0x16u);
      outlined destroy of NSObject?(v14);
      MEMORY[0x20F30E080](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v9);
      v23 = v9;
      LOBYTE(v9) = v42;
      MEMORY[0x20F30E080](v23, -1, -1);
      MEMORY[0x20F30E080](v13, -1, -1);

      (*(v3 + 8))(v8, v41);
      return v9 & 1;
    }

    v37 = *(v3 + 8);
    v38 = v8;
LABEL_20:
    v37(v38, v2);
    return v9 & 1;
  }

  static WOLog.safety.getter();
  v24 = a1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v25, v26))
  {

    v37 = *(v3 + 8);
    v38 = v6;
    goto LABEL_20;
  }

  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v42 = v9;
  v9 = v29;
  v43 = v29;
  *v27 = 136315394;
  type metadata accessor for MultiSportWorkoutConfiguration();
  v30 = swift_dynamicCastClass();
  v31 = v30 == 0;
  if (v30)
  {
    v32 = 0x707369746C756D20;
  }

  else
  {
    v32 = 0;
  }

  v41 = v2;
  if (v31)
  {
    v33 = 0xE000000000000000;
  }

  else
  {
    v33 = 0xEB0000000074726FLL;
  }

  v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v43);

  *(v27 + 4) = v34;
  *(v27 + 12) = 2112;
  *(v27 + 14) = v24;
  *v28 = v24;
  v35 = v24;
  _os_log_impl(&dword_20C66F000, v25, v26, "[SafetyCheckIn] unavailable for%s configuration: %@", v27, 0x16u);
  outlined destroy of NSObject?(v28);
  MEMORY[0x20F30E080](v28, -1, -1);
  __swift_destroy_boxed_opaque_existential_0(v9);
  v36 = v9;
  LOBYTE(v9) = v42;
  MEMORY[0x20F30E080](v36, -1, -1);
  MEMORY[0x20F30E080](v27, -1, -1);

  (*(v3 + 8))(v6, v41);
  return v9 & 1;
}

unint64_t specialized static WorkoutSafetyCheckIn.isSafetyCheckInEnabled()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v34 - v6;
  v8 = MEMORY[0x20F30D310](v5);
  v9 = MEMORY[0x20F30D300]();
  v10 = v9;
  LODWORD(v11) = v8 | v9;
  static WOLog.safety.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36 = v1;
    v37 = v15;
    v34 = v15;
    *v14 = 67110146;
    *(v14 + 4) = v11 & 1;
    *(v14 + 8) = 2080;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v11;
    v18 = v4;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v37);

    *(v14 + 10) = v19;
    *(v14 + 18) = 1024;
    *(v14 + 20) = v8;
    *(v14 + 24) = 2080;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v37);
    v4 = v18;

    *(v14 + 26) = v11;
    LOBYTE(v11) = v35;
    *(v14 + 34) = 1024;
    *(v14 + 36) = v10 & 1;
    _os_log_impl(&dword_20C66F000, v12, v13, "[SafetyCheckIn] enabled: %{BOOL}d, workout settings (%s: %{BOOL}d | %s: %{BOOL}d)", v14, 0x28u);
    v22 = v34;
    swift_arrayDestroy();
    v1 = v36;
    MEMORY[0x20F30E080](v22, -1, -1);
    MEMORY[0x20F30E080](v14, -1, -1);
  }

  v23 = *(v1 + 1);
  v23(v7, v0);
  if (v10)
  {
    MEMORY[0x20F30D370](0);
    static WOLog.safety.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = v4;
      v37 = v27;
      v28 = v27;
      *v26 = 136315138;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v37);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_20C66F000, v24, v25, "[SafetyCheckIn] disabled %s one time prompt", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x20F30E080](v28, -1, -1);
      MEMORY[0x20F30E080](v26, -1, -1);

      v32 = v36;
    }

    else
    {

      v32 = v4;
    }

    v23(v32, v0);
  }

  return v11 & 1;
}

void specialized WorkoutSafetyCheckIn.shouldDisplaySafetyCheckIn(for:startSource:startPoolSwim:completion:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v85 = a3;
  v86 = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v83 = v8;
  v84 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v82 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v82 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v82 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v82 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v82 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v82 - v28;
  if (![objc_opt_self() zelkovaWorkoutEnabled])
  {
    static WOLog.safety.getter();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_20C66F000, v43, v44, "[SafetyCheckIn] disabled because Zelkova_Workout feature flag is disabled", v45, 2u);
      MEMORY[0x20F30E080](v45, -1, -1);
    }

    (*(v84 + 8))(v12, v83);
    type metadata accessor for DispatchUtilities();
    v46 = swift_allocObject();
    *(v46 + 16) = v85;
    *(v46 + 24) = v86;

    goto LABEL_28;
  }

  if (![*(v5 + OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_appDeletionManager) isMessagesAppInstalled])
  {
    static WOLog.safety.getter();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_20C66F000, v47, v48, "[SafetyCheckIn] disabled because Messages app is not installed", v49, 2u);
      MEMORY[0x20F30E080](v49, -1, -1);
    }

    (*(v84 + 8))(v15, v83);
    type metadata accessor for DispatchUtilities();
    v50 = swift_allocObject();
    *(v50 + 16) = v85;
    *(v50 + 24) = v86;

    goto LABEL_28;
  }

  if ((specialized static WorkoutSafetyCheckIn.isSafetyCheckInAvailable(for:)(a2) & 1) == 0)
  {
    static WOLog.safety.getter();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v93 = v54;
      *v53 = 136315138;
      v55 = NLWorkoutStartSourceDescription();
      if (v55)
      {
        v56 = v55;
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;
      }

      else
      {
        v57 = 0;
        v59 = 0;
      }

      aBlock = v57;
      v88 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
      v73 = Optional.description.getter();
      v75 = v74;

      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v93);

      *(v53 + 4) = v76;
      _os_log_impl(&dword_20C66F000, v51, v52, "[SafetyCheckIn] prompt is not available for startSource: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x20F30E080](v54, -1, -1);
      MEMORY[0x20F30E080](v53, -1, -1);
    }

    (*(v84 + 8))(v18, v83);
    type metadata accessor for DispatchUtilities();
    v77 = swift_allocObject();
    *(v77 + 16) = v85;
    *(v77 + 24) = v86;

    goto LABEL_28;
  }

  if ((specialized static WorkoutSafetyCheckIn.isSafetyCheckInAvailable(for:)(a1) & 1) == 0)
  {
    static WOLog.safety.getter();
    v60 = a1;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock = v64;
      *v63 = 136315138;
      v65 = WorkoutConfiguration.logString.getter();
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &aBlock);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_20C66F000, v61, v62, "[SafetyCheckIn] prompt is not available for configuration: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x20F30E080](v64, -1, -1);
      MEMORY[0x20F30E080](v63, -1, -1);
    }

    (*(v84 + 8))(v21, v83);
    type metadata accessor for DispatchUtilities();
    v68 = swift_allocObject();
    *(v68 + 16) = v85;
    *(v68 + 24) = v86;

    goto LABEL_28;
  }

  if ((specialized static WorkoutSafetyCheckIn.isSafetyCheckInEnabled()() & 1) == 0)
  {
    static WOLog.safety.getter();
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_20C66F000, v69, v70, "[SafetyCheckIn] prompt is not enabled in workout settings", v71, 2u);
      MEMORY[0x20F30E080](v71, -1, -1);
    }

    (*(v84 + 8))(v24, v83);
    type metadata accessor for DispatchUtilities();
    v72 = swift_allocObject();
    *(v72 + 16) = v85;
    *(v72 + 24) = v86;

    goto LABEL_28;
  }

  v30 = *(v5 + OBJC_IVAR____TtC9WorkoutUI20WorkoutSafetyCheckIn_sessionManager);
  if (!v30)
  {
    static WOLog.safety.getter();
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_20C66F000, v78, v79, "[SafetyCheckIn] prompt is not available because session manager is not initialized", v80, 2u);
      MEMORY[0x20F30E080](v80, -1, -1);
    }

    (*(v84 + 8))(v27, v83);
    type metadata accessor for DispatchUtilities();
    v81 = swift_allocObject();
    *(v81 + 16) = v85;
    *(v81 + 24) = v86;

LABEL_28:
    static DispatchUtilities.ensureMainQueueOrAsync(block:)();

    return;
  }

  v31 = v30;
  static WOLog.safety.getter();
  v32 = a1;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock = v36;
    *v35 = 136315138;
    v37 = WorkoutConfiguration.logString.getter();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &aBlock);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_20C66F000, v33, v34, "[SafetyCheckIn] prompt is available and enabled, fetching current session state, configuration: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x20F30E080](v36, -1, -1);
    MEMORY[0x20F30E080](v35, -1, -1);
  }

  (*(v84 + 8))(v29, v83);
  v40 = swift_allocObject();
  v41 = v86;
  *(v40 + 16) = v85;
  *(v40 + 24) = v41;
  v91 = partial apply for closure #7 in WorkoutSafetyCheckIn.shouldDisplaySafetyCheckIn(for:startSource:startPoolSwim:completion:);
  v92 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v88 = 1107296256;
  v89 = thunk for @escaping @callee_guaranteed (@guaranteed SMSessionManagerState?, @unowned Bool, @guaranteed Error?) -> ();
  v90 = &block_descriptor_58;
  v42 = _Block_copy(&aBlock);

  [v31 fetchCurrentSessionStateWithHandler_];
  _Block_release(v42);
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void type metadata completion function for WorkoutSafetyCheckIn()
{
  type metadata accessor for Published<Bool>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id ActivityTypeRoom.init(activityType:activityMoveMode:activityPausedRingsObserver:healthStore:occurrenceStore:inferenceClient:isPresentingQuickWorkoutSwitch:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  type metadata accessor for WorkoutVoiceAvailabilityProvider();
  _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, MEMORY[0x277D7DD08]);
  *a8 = Environment.init<A>(_:)();
  *(a8 + 8) = v15 & 1;
  _sSo21FIUIFormattingManagerCMaTm_12(0, &lazy cache variable for type metadata for FIUIFormattingManager);
  lazy protocol witness table accessor for type FIUIFormattingManager and conformance FIUIFormattingManager();
  *(a8 + 16) = EnvironmentObject.init()();
  *(a8 + 24) = v16;
  type metadata accessor for ConfigurationNavigationModel();
  _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  *(a8 + 56) = EnvironmentObject.init()();
  *(a8 + 64) = v17;
  *(a8 + 72) = a1;
  *(a8 + 80) = a2;
  v18 = type metadata accessor for ActivityTypeRoom();
  *(a8 + v18[12]) = a3;
  *(a8 + v18[13]) = a5;
  *(a8 + 88) = a4;
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a4;
  v19[5] = a5;
  *(a8 + 32) = _s9WorkoutUI16ActivityTypeRoomV08activityD00F8MoveMode0F19PausedRingsObserver11healthStore010occurrenceM015inferenceClient017isPresentingQuickA6SwitchACSo011FIUIWorkoutcD0C_So010HKActivitygH0V0A4Core0cijK0CSo08HKHealthM0CAO0a23ConfigurationOccurrenceM0C19FitnessIntelligence09InferenceP0VSbtcfcAO0aY10DataSourceCycfu_TA_1;
  *(a8 + 40) = v19;
  *(a8 + 48) = 0;
  v20 = v18[11];
  v21 = type metadata accessor for InferenceClient();
  (*(*(v21 - 8) + 32))(a8 + v20, a6, v21);
  *(a8 + v18[14]) = a7;
  v22 = a1;
  v23 = a5;

  return a4;
}

uint64_t _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ActivityTypeRoom()
{
  result = type metadata singleton initialization cache for ActivityTypeRoom;
  if (!type metadata singleton initialization cache for ActivityTypeRoom)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t implicit closure #1 in ActivityTypeRoom.init(activityType:activityMoveMode:activityPausedRingsObserver:healthStore:occurrenceStore:inferenceClient:isPresentingQuickWorkoutSwitch:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  objc_allocWithZone(type metadata accessor for WorkoutConfigurationDataSource());
  v7 = a1;
  v8 = a3;
  v9 = a4;
  return WorkoutConfigurationDataSource.init(activityType:activityMoveMode:healthStore:occurrenceStore:raceRouteDataStore:usePersistence:)();
}

id ActivityTypeRoom.body.getter@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v69);
  v68 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v67 = &v59 - v4;
  v5 = type metadata accessor for WorkoutConfigurationFilterType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - v9;
  v71 = type metadata accessor for InferenceClient();
  v11 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ActivityTypeRoomPhone();
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v65 = &v59 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewV07WorkoutB021ActivityTypeRoomPhoneV_GMd);
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  if (static Platform.current.getter())
  {
    swift_storeEnumTagMultiPayload();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type ActivityTypeRoomPhone and conformance ActivityTypeRoomPhone, type metadata accessor for ActivityTypeRoomPhone);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v72 = v19;
    v74 = v21;
    v23 = *(v1 + 10);
    v60 = *(v1 + 9);
    v61 = v23;
    v24 = *(v1 + 11);
    v25 = type metadata accessor for ActivityTypeRoom();
    v26 = *&v1[*(v25 + 52)];
    v27 = *(v25 + 44);
    v73 = v11;
    v28 = *(v11 + 16);
    v62 = v26;
    v63 = v28;
    v64 = v13;
    v28(v13, &v1[v27], v71);
    type metadata accessor for WorkoutVoiceAvailabilityProvider();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, MEMORY[0x277D7DD08]);
    v29 = v24;
    *v16 = Environment.init<A>(_:)();
    v16[8] = v30 & 1;
    _sSo21FIUIFormattingManagerCMaTm_12(0, &lazy cache variable for type metadata for FIUIFormattingManager);
    lazy protocol witness table accessor for type FIUIFormattingManager and conformance FIUIFormattingManager();
    *(v16 + 2) = EnvironmentObject.init()();
    *(v16 + 3) = v31;
    *(v16 + 7) = implicit closure #2 in implicit closure #1 in variable initialization expression of ActivityTypeRoomPhone._devicesProvider;
    *(v16 + 8) = 0;
    v16[72] = 0;
    type metadata accessor for ConfigurationNavigationModel();
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    *(v16 + 10) = EnvironmentObject.init()();
    *(v16 + 11) = v32;
    (*(v6 + 104))(v10, *MEMORY[0x277D7DC30], v5);
    (*(v6 + 16))(v66, v10, v5);
    State.init(wrappedValue:)();
    (*(v6 + 8))(v10, v5);
    v33 = type metadata accessor for UUID();
    v34 = v67;
    (*(*(v33 - 8) + 56))(v67, 1, 1, v33);
    outlined init with copy of UUID?(v34, v68);
    State.init(wrappedValue:)();
    outlined destroy of UUID?(v34);
    v35 = v60;
    v36 = v61;
    *(v16 + 12) = v60;
    *(v16 + 13) = v36;
    *(v16 + 14) = v29;
    v37 = swift_allocObject();
    v37[2] = v35;
    v37[3] = v36;
    v38 = v35;
    v39 = v62;
    v37[4] = v29;
    v37[5] = v39;
    *(v16 + 4) = _s9WorkoutUI21ActivityTypeRoomPhoneV08activityD00G8MoveMode0G19PausedRingsObserver11healthStore010occurrenceN015inferenceClientACSo011FIUIWorkoutcD0C_So010HKActivityhI0V0A4Core0cjkL0CSo08HKHealthN0CAN0a23ConfigurationOccurrenceN0C19FitnessIntelligence09InferenceQ0VtcfcAN0aV10DataSourceCycfu_TA_0;
    *(v16 + 5) = v37;
    v16[48] = 0;
    v63(&v16[v14[12]], v64, v71);
    v40 = objc_opt_self();
    v41 = v38;
    v42 = v29;
    v43 = v41;
    v44 = v39;
    result = [v40 fiui:v43 supportedGoalTypesForActivityType:v36 activityMoveMode:?];
    if (result)
    {
      v45 = result;
      _sSo21FIUIFormattingManagerCMaTm_12(0, &lazy cache variable for type metadata for NSNumber);
      v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v46 >> 62)
      {
        goto LABEL_24;
      }

      for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
      {
        v49 = v73;
        v48 = v74;
        v68 = v16;
        v69 = v14;
        if (!i)
        {
          break;
        }

        v50 = 0;
        v16 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v46 & 0xC000000000000001) != 0)
          {
            v51 = MEMORY[0x20F30C990](v50, v46);
          }

          else
          {
            if (v50 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            v51 = *(v46 + 8 * v50 + 32);
          }

          v14 = v51;
          v52 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            break;
          }

          v53 = [v51 unsignedIntegerValue];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
          }

          v55 = *(v16 + 2);
          v54 = *(v16 + 3);
          v14 = (v55 + 1);
          if (v55 >= v54 >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v16);
          }

          *(v16 + 2) = v14;
          *&v16[8 * v55 + 32] = v53;
          ++v50;
          v56 = v52 == i;
          v49 = v73;
          v48 = v74;
          if (v56)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        ;
      }

      v16 = MEMORY[0x277D84F90];
LABEL_21:

      (*(v49 + 8))(v64, v71);
      v57 = v68;
      *&v68[*(v69 + 60)] = v16;
      v58 = v65;
      outlined init with take of ActivityTypeRoomPhone(v57, v65);
      outlined init with copy of ActivityTypeRoomPhone(v58, v48);
      swift_storeEnumTagMultiPayload();
      _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type ActivityTypeRoomPhone and conformance ActivityTypeRoomPhone, type metadata accessor for ActivityTypeRoomPhone);
      _ConditionalContent<>.init(storage:)();
      return outlined destroy of ActivityTypeRoomPhone(v58);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t objectdestroyTm_81()
{

  return swift_deallocObject();
}

uint64_t outlined init with take of ActivityTypeRoomPhone(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityTypeRoomPhone();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ActivityTypeRoomPhone(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityTypeRoomPhone();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ActivityTypeRoomPhone(uint64_t a1)
{
  v2 = type metadata accessor for ActivityTypeRoomPhone();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata completion function for ActivityTypeRoom()
{
  type metadata accessor for Environment<WorkoutVoiceAvailabilityProvider>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<FIUIFormattingManager>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for StateObject<WorkoutConfigurationDataSource>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>();
        if (v3 <= 0x3F)
        {
          _sSo21FIUIFormattingManagerCMaTm_12(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
          if (v4 <= 0x3F)
          {
            type metadata accessor for HKActivityMoveMode(319);
            if (v5 <= 0x3F)
            {
              _sSo21FIUIFormattingManagerCMaTm_12(319, &lazy cache variable for type metadata for HKHealthStore);
              if (v6 <= 0x3F)
              {
                type metadata accessor for InferenceClient();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for ActivityPausedRingsObserver();
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for WorkoutConfigurationOccurrenceStore();
                    if (v9 <= 0x3F)
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
    }
  }
}

void type metadata accessor for Environment<WorkoutVoiceAvailabilityProvider>()
{
  if (!lazy cache variable for type metadata for Environment<WorkoutVoiceAvailabilityProvider>)
  {
    type metadata accessor for WorkoutVoiceAvailabilityProvider();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<WorkoutVoiceAvailabilityProvider>);
    }
  }
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_12(uint64_t a1, unint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmptyView, ActivityTypeRoomPhone> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, ActivityTypeRoomPhone> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, ActivityTypeRoomPhone> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewV07WorkoutB021ActivityTypeRoomPhoneVGMd);
    _s11WorkoutCore0A25VoiceAvailabilityProviderCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type ActivityTypeRoomPhone and conformance ActivityTypeRoomPhone, type metadata accessor for ActivityTypeRoomPhone);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, ActivityTypeRoomPhone> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t WorkoutBuddyStatePublisher.State.iconName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != *MEMORY[0x277D7DB80] && v7 != *MEMORY[0x277D7DB90])
  {
    (*(v3 + 8))(v6, v2);
  }

  return 0x6D726F6665766177;
}

void WorkoutBuddyStatePublisher.State.foregroundColor.getter()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D7DB80])
  {
    static Color.red.getter();
    return;
  }

  if (v7 == *MEMORY[0x277D7DB90] || v7 == *MEMORY[0x277D7DB88])
  {
    static Color.gray.getter();
    return;
  }

  v9 = [objc_opt_self() keyColors];
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [v9 nonGradientTextColor];

  if (!v11)
  {
LABEL_14:
    __break(1u);
    return;
  }

  Color.init(uiColor:)();
  (*(v3 + 8))(v6, v2);
}

uint64_t WorkoutBuddyStatePublisher.State.accessibilityDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D7DB98])
  {
    v8 = "AX_WORKOUT_BUDDY_LOADING";
LABEL_5:
    v9 = v8 - 32;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = WorkoutUIBundle.super.isa;
    v20 = 0xE000000000000000;
    v11 = 0x617A696C61636F4CLL;
    v12 = 0xEB00000000656C62;
    v13 = v9 | 0x8000000000000000;
    v14 = 0xD000000000000018;
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x277D7DBA0])
  {
    v8 = "AX_WORKOUT_BUDDY_TALKING";
    goto LABEL_5;
  }

  if (v7 == *MEMORY[0x277D7DBA8])
  {
    v15 = "AX_WORKOUT_BUDDY_DISCONNECTED";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = WorkoutUIBundle.super.isa;
    v20 = 0xE000000000000000;
    v11 = 0x617A696C61636F4CLL;
    v12 = 0xEB00000000656C62;
    v14 = 0xD00000000000001ALL;
  }

  else if (v7 == *MEMORY[0x277D7DB80])
  {
    v15 = "AX_WORKOUT_BUDDY_MUTED";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = WorkoutUIBundle.super.isa;
    v20 = 0xE000000000000000;
    v11 = 0x617A696C61636F4CLL;
    v12 = 0xEB00000000656C62;
    v14 = 0xD00000000000001DLL;
  }

  else if (v7 == *MEMORY[0x277D7DB90])
  {
    v15 = "AX_WORKOUT_BUDDY_NOT_AVAILABLE";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = WorkoutUIBundle.super.isa;
    v14 = 0xD000000000000016;
    v20 = 0xE000000000000000;
    v11 = 0x617A696C61636F4CLL;
    v12 = 0xEB00000000656C62;
  }

  else
  {
    if (v7 != *MEMORY[0x277D7DB88])
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }

    v15 = "tEnabledInitialized";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = WorkoutUIBundle.super.isa;
    v20 = 0xE000000000000000;
    v11 = 0x617A696C61636F4CLL;
    v12 = 0xEB00000000656C62;
    v14 = 0xD00000000000001ELL;
  }

  v13 = v15 | 0x8000000000000000;
LABEL_25:
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v17 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v14, *&v11, v10, v16, *(&v20 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t SessionControl.dataLinkCommand.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  if (v3 <= 1)
  {
    if (*(v1 + 24))
    {
      v4 = MEMORY[0x277D7E030];
    }

    else
    {
      v4 = MEMORY[0x277D7E028];
    }

    goto LABEL_29;
  }

  if (*(v1 + 24) <= 3u)
  {
    if (v3 == 2)
    {
      v4 = MEMORY[0x277D7E018];
      goto LABEL_29;
    }

    goto LABEL_32;
  }

  if (v3 != 5)
  {
    goto LABEL_36;
  }

  v5 = *v1;
  if (!(v1[1] | v1[2] | *v1))
  {
    goto LABEL_36;
  }

  if (v5 == 1 && *(v1 + 1) == 0)
  {
    v4 = MEMORY[0x277D7E000];
    goto LABEL_29;
  }

  if (v5 == 2 && *(v1 + 1) == 0)
  {
    v4 = MEMORY[0x277D7E040];
    goto LABEL_29;
  }

  if (v5 == 3 && *(v1 + 1) == 0)
  {
    v4 = MEMORY[0x277D7E010];
    goto LABEL_29;
  }

  if (v5 == 4 && *(v1 + 1) == 0)
  {
    v4 = MEMORY[0x277D7E008];
    goto LABEL_29;
  }

  if (v5 == 5 && *(v1 + 1) == 0)
  {
LABEL_36:
    while (1)
    {
LABEL_32:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v6 = *(v1 + 1) == 0 && v5 == 6;
  v4 = MEMORY[0x277D7E038];
  if (v6)
  {
    v4 = MEMORY[0x277D7E020];
  }

LABEL_29:
  v7 = *v4;
  v8 = type metadata accessor for DataLinkCommand();
  v9 = *(*(v8 - 8) + 104);

  return v9(a1, v7, v8);
}

uint64_t specialized static SessionControl.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v15[0] = *a1;
  v15[1] = v3;
  v15[2] = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v9 != 1)
        {
          goto LABEL_62;
        }

LABEL_20:
        outlined destroy of (SessionControl, SessionControl)(v15);
        return v2 == v6;
      }

      if (v9 == 2)
      {
        goto LABEL_20;
      }
    }

    else if (!v9)
    {
      goto LABEL_20;
    }

LABEL_62:
    outlined copy of SessionControl(v6, v7, v8, v9);
    outlined destroy of (SessionControl, SessionControl)(v15);
    return 0;
  }

  if (v5 != 3)
  {
    if (v5 != 4)
    {
      v12 = v4 | v3;
      if (v4 | v3 | v2)
      {
        if (v2 != 1 || v12)
        {
          if (v2 != 2 || v12)
          {
            if (v2 != 3 || v12)
            {
              if (v2 != 4 || v12)
              {
                if (v2 != 5 || v12)
                {
                  if (v2 != 6 || v12)
                  {
                    if (v9 != 5 || v6 != 7)
                    {
                      goto LABEL_62;
                    }
                  }

                  else if (v9 != 5 || v6 != 6)
                  {
                    goto LABEL_62;
                  }
                }

                else if (v9 != 5 || v6 != 5)
                {
                  goto LABEL_62;
                }
              }

              else if (v9 != 5 || v6 != 4)
              {
                goto LABEL_62;
              }
            }

            else if (v9 != 5 || v6 != 3)
            {
              goto LABEL_62;
            }
          }

          else if (v9 != 5 || v6 != 2)
          {
            goto LABEL_62;
          }
        }

        else if (v9 != 5 || v6 != 1)
        {
          goto LABEL_62;
        }

        if (v8 | v7)
        {
          goto LABEL_62;
        }
      }

      else if (v9 != 5 || v8 | v7 | v6)
      {
        goto LABEL_62;
      }

LABEL_61:
      outlined destroy of (SessionControl, SessionControl)(v15);
      return 1;
    }

    if (v9 == 4)
    {
      if (v2 != v6 || v3 != v7)
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of SessionControl(v6, v7, v8, 4u);
        outlined copy of SessionControl(v2, v3, v4, 4u);
        outlined destroy of (SessionControl, SessionControl)(v15);
        return v14 & 1;
      }

      outlined copy of SessionControl(v2, v3, v8, 4u);
      outlined copy of SessionControl(v2, v3, v4, 4u);
      goto LABEL_61;
    }

LABEL_18:
    v10 = v9;

    LOBYTE(v9) = v10;
    goto LABEL_62;
  }

  if (v9 != 3)
  {
    goto LABEL_18;
  }

  if (v2 == v6 && v3 == v7)
  {
    outlined copy of SessionControl(v2, v3, v8, 3u);
    outlined copy of SessionControl(v2, v3, v4, 3u);
    outlined destroy of (SessionControl, SessionControl)(v15);
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of SessionControl(v6, v7, v8, 3u);
    outlined copy of SessionControl(v2, v3, v4, 3u);
    outlined destroy of (SessionControl, SessionControl)(v15);
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  return v4 == v8;
}

unint64_t lazy protocol witness table accessor for type [SessionControl] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SessionControl] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SessionControl] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI14SessionControlOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SessionControl] and conformance [A]);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9WorkoutUI14SessionControlO(uint64_t a1)
{
  if ((*(a1 + 24) & 7u) <= 4)
  {
    return *(a1 + 24) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t getEnumTagSinglePayload for SessionControl(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 25))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 24);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionControl(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SessionControl(uint64_t result, unsigned int a2)
{
  v2 = a2 - 5;
  if (a2 >= 5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t outlined destroy of (SessionControl, SessionControl)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI14SessionControlO_ACtMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for GoalRingView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for GoalRingView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t GoalRingView.makeUIView(context:)(double a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for ARUIRingsViewWrapper();
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_completionPercentage;
  *&v10[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_completionPercentage] = 0;
  *&v10[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_storedRingsView] = 0;
  *&v10[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_goal] = a5;
  *&v10[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_diameter] = a1;
  *&v10[OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_thickness] = a2;
  *&v10[v11] = a3;
  v17.receiver = v10;
  v17.super_class = v9;
  v12 = a5;
  v13 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  ARUIRingsViewWrapper.resetRingsView()();
  v14 = [objc_opt_self() clearColor];
  v15 = UIView.backgroundColor(_:)();

  return v15;
}

void GoalRingView.updateUIView(_:context:)(uint64_t a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  v9 = *(a1 + OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_goal);
  *(a1 + OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_goal) = a6;
  type metadata accessor for NLSessionActivityGoal();
  v10 = a6;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    ARUIRingsViewWrapper.resetRingsView()();
  }

  *(a1 + OBJC_IVAR____TtC9WorkoutUI20ARUIRingsViewWrapper_completionPercentage) = a4;
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = partial apply for closure #1 in ARUIRingsViewWrapper.setCompletionPercentage(animated:);
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed () -> ();
  v14[3] = &block_descriptor_38;
  v13 = _Block_copy(v14);

  [v11 animateWithDuration:v13 animations:4 curve:0 completion:1.0];
  _Block_release(v13);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance GoalRingView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type GoalRingView and conformance GoalRingView();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance GoalRingView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type GoalRingView and conformance GoalRingView();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance GoalRingView()
{
  lazy protocol witness table accessor for type GoalRingView and conformance GoalRingView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double RaceRowConstants.verticalClippedHeight.getter()
{
  static Platform.current.getter();
  v1 = Platform.rawValue.getter();
  if (v1 == Platform.rawValue.getter())
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 bounds];
    v4 = v3;
  }

  else
  {
    v4 = 62.0;
  }

  static Platform.current.getter();
  v5 = Platform.rawValue.getter();
  if (v5 == Platform.rawValue.getter())
  {
    v6 = [objc_opt_self() mainScreen];
    [v6 bounds];
    v8 = v7;
  }

  else
  {
    v8 = 62.0;
  }

  return v0[6] + v0[2] / *v0 * (v4 * (v0[2] / v0[3])) + v0[5] / *v0 * (v8 * (v0[2] / v0[3]));
}

double specialized RaceRowConstants.init()@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for snapshotTotalHeight != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = static RaceRouteSnapshotConstants.snapshotTotalHeight;
  if (one-time initialization token for snapshotTotalWidth != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = static RaceRouteSnapshotConstants.snapshotTotalWidth;
  if (one-time initialization token for snapshotRouteHeight != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v3 = static RaceRouteSnapshotConstants.snapshotRouteHeight;
  if (one-time initialization token for snapshotRouteWidth != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v4 = static RaceRouteSnapshotConstants.snapshotRouteWidth;
  if (one-time initialization token for snapshotRouteTopPadding != -1)
  {
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  v5 = static RaceRouteSnapshotConstants.snapshotRouteTopPadding;
  if (one-time initialization token for snapshotRouteBottomPadding != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v6 = static RaceRouteSnapshotConstants.snapshotRouteBottomPadding;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  result = 8.5;
  *(a1 + 48) = xmmword_20CB87A90;
  return result;
}

uint64_t getEnumTagSinglePayload for RaceRowConstants(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RaceRowConstants(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t static MirroredStartProvider.shared.getter()
{
  started = type metadata accessor for MirroredStartProvider();

  return MEMORY[0x2821FEAF0](started, &unk_27C7DDD78);
}

void specialized MirroredStartProvider.supportsMirroredStart.getter()
{
  v29 = type metadata accessor for WorkoutDeviceType();
  v0 = *(v29 - 8);
  v1 = MEMORY[0x28223BE20](v29);
  v28 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v27 = &v20 - v3;
  v4 = type metadata accessor for WorkoutDevice();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkoutFeatures();
  v31[3] = v7;
  v31[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(v7 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D7DDB0], v7);
  LOBYTE(v7) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v31);
  if ((v7 & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
  {
    type metadata accessor for WorkoutDevicesProvider();
    v9 = static WorkoutDevicesProvider.shared.getter();
    v10 = dispatch thunk of WorkoutDevicesProvider.devices.getter();

    v26 = *(v10 + 16);
    if (v26)
    {
      v11 = 0;
      v25 = v10 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      v24 = v30 + 16;
      v23 = *MEMORY[0x277D7D9D8];
      v12 = (v0 + 8);
      v21 = (v30 + 8);
      v22 = (v0 + 104);
      while (v11 < *(v10 + 16))
      {
        (*(v30 + 16))(v6, v25 + *(v30 + 72) * v11, v4);
        v13 = v27;
        WorkoutDevice.type.getter();
        v15 = v28;
        v14 = v29;
        (*v22)(v28, v23, v29);
        v16 = static WorkoutDeviceType.== infix(_:_:)();
        v17 = v4;
        v18 = *v12;
        (*v12)(v15, v14);
        v18(v13, v14);
        if (v16)
        {
          v19 = WorkoutDevice.isTestDevice.getter();
          (*v21)(v6, v17);
          v4 = v17;
          if ((v19 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          (*v21)(v6, v17);
          v4 = v17;
        }

        if (v26 == ++v11)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:
    }
  }
}

unint64_t lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures()
{
  result = lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures;
  if (!lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures)
  {
    type metadata accessor for WorkoutFeatures();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RaceCroppedMapView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for RaceCroppedMapView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 closure #1 in RaceCroppedMapView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  GeometryProxy.size.getter();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = Image.resizable(capInsets:resizingMode:)();
  (*(v3 + 8))(v5, v2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17.n128_u8[0] = 1;
  *&v13[6] = v14;
  *&v13[22] = v15;
  *&v13[38] = v16;
  GeometryProxy.size.getter();
  static Alignment.top.getter();
  _FrameLayout.init(width:height:alignment:)();
  GeometryProxy.size.getter();
  static Alignment.bottom.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v7 = *&v13[16];
  *(a1 + 18) = *v13;
  *(a1 + 34) = v7;
  *(a1 + 50) = *&v13[32];
  *(a1 + 64) = *&v13[46];
  v8 = v19;
  *(a1 + 72) = v20;
  v9 = v22;
  *(a1 + 88) = v21;
  *(a1 + 104) = v9;
  result = v17;
  v11 = v18;
  *(a1 + 152) = v8;
  *(a1 + 136) = v11;
  *(a1 + 120) = result;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance RaceCroppedMapView@<X0>(double (**a1)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v11[3] = *(v1 + 48);
  v11[4] = v4;
  v12 = *(v1 + 80);
  v5 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v5;
  v11[2] = v3;
  v6 = swift_allocObject();
  v7 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = *(v1 + 80);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  *a1 = partial apply for closure #1 in RaceCroppedMapView.body.getter;
  a1[1] = v6;
  return outlined init with copy of RaceCroppedMapView(v11, v10);
}

unint64_t lazy protocol witness table accessor for type GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout>, _FrameLayout>> and conformance GeometryReader<A>()
{
  result = lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout>, _FrameLayout>> and conformance GeometryReader<A>;
  if (!lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout>, _FrameLayout>> and conformance GeometryReader<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameJ0VGALGALGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _FrameLayout>, _FrameLayout>> and conformance GeometryReader<A>);
  }

  return result;
}

id ContributorBridge.__allocating_init(contributor:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___SMContributor_contributor;
  v5 = type metadata accessor for Contributor();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

id ContributorBridge.init(contributor:)(uint64_t a1)
{
  v3 = OBJC_IVAR___SMContributor_contributor;
  v4 = type metadata accessor for Contributor();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ContributorBridge();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t type metadata accessor for ContributorBridge()
{
  result = type metadata singleton initialization cache for ContributorBridge;
  if (!type metadata singleton initialization cache for ContributorBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id @objc ContributorBridge.identifier.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x20F30BAD0](v5, v7);

  return v8;
}

uint64_t ContributorBridge.role.getter()
{
  result = Contributor.role.getter();
  if ((v2 & 1) == 0)
  {
    outlined consume of PortableEnum<ContributorRole>(result, v1, 0);
    return 6;
  }

  return result;
}

id ContributorBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContributorBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContributorBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for ContributorBridge()
{
  result = type metadata accessor for Contributor();
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

void static WorkoutChartColors.elevation()(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 elevationColors];
  v4 = [v3 valueDisplayColor];

  v5 = [v2 elevationColors];
  v6 = [v5 nonGradientTextColor];

  if (v6)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.250980392 green:0.250980392 blue:0.250980392 alpha:1.0];
    v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.682352941 green:0.705882353 blue:0.749019608 alpha:1.0];
    *a1 = v4;
    a1[1] = v6;
    a1[2] = v7;
    a1[3] = v8;
    a1[5] = 0;
    a1[6] = 0;
    a1[4] = 0;
  }

  else
  {
    __break(1u);
  }
}

void static WorkoutChartColors.power()(void *a1@<X8>)
{
  v2 = [objc_opt_self() whiteColor];
  v3 = [objc_opt_self() powerColors];
  v4 = [v3 nonGradientTextColor];

  if (v4)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.250980392 green:0.250980392 blue:0.250980392 alpha:1.0];
    v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.682352941 green:0.705882353 blue:0.749019608 alpha:1.0];
    v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.490196078 green:0.596078431 blue:0.0 alpha:0.1];
    v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:0.53];
    v9 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.301960784 green:0.474509804 blue:0.0 alpha:1.0];
    *a1 = v2;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
    a1[4] = v7;
    a1[5] = v8;
    a1[6] = v9;
  }

  else
  {
    __break(1u);
  }
}

id WorkoutChartColors.highlightColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *WorkoutChartColors.gradientStartColor.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *WorkoutChartColors.gradientEndColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *WorkoutChartColors.lineMarkColor.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t getEnumTagSinglePayload for WorkoutChartColors(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutChartColors(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for WorkoutConfigurationThumbnailView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for WorkoutConfigurationThumbnailView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t WorkoutConfigurationThumbnailView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = static VerticalAlignment.center.getter();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerVSg_AA6VStackVyAIyAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0N0VSgFQOyAPyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGA0_yAUSgGG_Qo_A4_GAA12_ScaleEffectVG_ANyAIyAPyAA4TextVA0_ySiSgGG_APyAPyAA0F0VyAPyA18_A0_yAZ0V0OGGSgGA7_GA4_GtGGtGGALtGGMd);
  closure #1 in WorkoutConfigurationThumbnailView.body.getter(a1, a2, a3, a4, (a5 + *(v10 + 44)));
  LOBYTE(a4) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGMd) + 36);
  *v19 = a4;
  *(v19 + 8) = v12;
  *(v19 + 16) = v14;
  *(v19 + 24) = v16;
  *(v19 + 32) = v18;
  *(v19 + 40) = 0;
  LOBYTE(a4) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GMd) + 36);
  *v28 = a4;
  *(v28 + 8) = v21;
  *(v28 + 16) = v23;
  *(v28 + 24) = v25;
  *(v28 + 32) = v27;
  *(v28 + 40) = 0;
  LOBYTE(a4) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GMd) + 36);
  *v37 = a4;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32;
  *(v37 + 24) = v34;
  *(v37 + 32) = v36;
  *(v37 + 40) = 0;
  LOBYTE(a4) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GA30_GMd) + 36);
  *v46 = a4;
  *(v46 + 8) = v39;
  *(v46 + 16) = v41;
  *(v46 + 24) = v43;
  *(v46 + 32) = v45;
  *(v46 + 40) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v47 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GA30_GAA06_FrameW0VGMd) + 36));
  *v47 = v51;
  v47[1] = v52;
  v47[2] = v53;
  WorkoutConfiguration.displayThumbnailColor.getter();
  v48 = Color.init(uiColor:)();
  LOBYTE(a4) = static Edge.Set.all.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GA30_GAA06_FrameW0VGAA016_BackgroundStyleQ0VyAZGGMd);
  v50 = a5 + *(result + 36);
  *v50 = v48;
  *(v50 + 8) = a4;
  return result;
}

uint64_t closure #1 in WorkoutConfigurationThumbnailView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v43 = a3;
  v44 = a4;
  v42 = a2;
  v40 = a1;
  v47 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyALSgGG_Qo_AWGAA12_ScaleEffectVG_ACyAEyAGyAA4TextVASySiSgGG_AGyAGyAA6HStackVyAGyA9_ASyAQ0Q0OGGSgGAZGAWGtGGtGGMd);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v36[-v8];
  MEMORY[0x28223BE20](v10);
  v45 = &v36[-v11];
  v12 = type metadata accessor for Locale.Language();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for Locale();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v36[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Locale.current.getter();
  Locale.language.getter();
  v20 = *(v17 + 8);
  v20(v19, v16);
  v38 = Locale.Language.characterDirection.getter();
  v21 = *(v13 + 8);
  v21(v15, v12);
  static Locale.current.getter();
  Locale.language.getter();
  v39 = v20;
  v20(v19, v16);
  v22 = Locale.Language.characterDirection.getter();
  v41 = v12;
  v21(v15, v12);
  if (v22 == 2)
  {
    v23 = static HorizontalAlignment.trailing.getter();
  }

  else
  {
    v23 = static HorizontalAlignment.leading.getter();
  }

  v37 = v38 == 2;
  LODWORD(v38) = v38 != 2;
  *v9 = v23;
  *(v9 + 1) = 0x4010000000000000;
  v9[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA0D0PAAE10fontWeightyQrAA4FontV0L0VSgFQOyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAWyAPSgGG_Qo_A_GAA12_ScaleEffectVG_AA0F0VyAIyAKyAA4TextVAWySiSgGG_AKyAKyAA6HStackVyAKyA15_AWyAU0T0OGGSgGA2_GA_GtGGtGGMd);
  closure #1 in closure #1 in WorkoutConfigurationThumbnailView.body.getter(v40, v42, v43, v44, &v9[*(v24 + 44)]);
  v25 = v9;
  v26 = v45;
  outlined init with take of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v25, v45, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyALSgGG_Qo_AWGAA12_ScaleEffectVG_ACyAEyAGyAA4TextVASySiSgGG_AGyAGyAA6HStackVyAGyA9_ASyAQ0Q0OGGSgGAZGAWGtGGtGGMd);
  static Locale.current.getter();
  Locale.language.getter();
  v39(v19, v16);
  v27 = Locale.Language.characterDirection.getter();
  v21(v15, v41);
  v28 = v27 == 2;
  v29 = v27 != 2;
  v30 = v46;
  outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v26, v46, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyALSgGG_Qo_AWGAA12_ScaleEffectVG_ACyAEyAGyAA4TextVASySiSgGG_AGyAGyAA6HStackVyAGyA9_ASyAQ0Q0OGGSgGAZGAWGtGGtGGMd);
  v31 = v47;
  *v47 = 0;
  v32 = v38;
  *(v31 + 8) = v37;
  *(v31 + 9) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerVSg_AA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAJyAA0F0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAOSgGG_Qo_AZGAA12_ScaleEffectVG_AFyAHyAJyAA4TextVAVySiSgGG_AJyAJyAA6HStackVyAJyA12_AVyAT0R0OGGSgGA1_GAZGtGGtGGADtMd);
  outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v30, v31 + *(v33 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyALSgGG_Qo_AWGAA12_ScaleEffectVG_ACyAEyAGyAA4TextVASySiSgGG_AGyAGyAA6HStackVyAGyA9_ASyAQ0Q0OGGSgGAZGAWGtGGtGGMd);
  v34 = v31 + *(v33 + 64);
  *v34 = 0;
  v34[8] = v29;
  v34[9] = v28;
  outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v26, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyALSgGG_Qo_AWGAA12_ScaleEffectVG_ACyAEyAGyAA4TextVASySiSgGG_AGyAGyAA6HStackVyAGyA9_ASyAQ0Q0OGGSgGAZGAWGtGGtGGMd);
  return outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v30, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGASyALSgGG_Qo_AWGAA12_ScaleEffectVG_ACyAEyAGyAA4TextVASySiSgGG_AGyAGyAA6HStackVyAGyA9_ASyAQ0Q0OGGSgGAZGAWGtGGtGGMd);
}

id closure #1 in closure #1 in WorkoutConfigurationThumbnailView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAA6HStackVyAGyAnKyAA5ImageV5ScaleOGGSgGAKyAA4FontVSgGGAKyAA5ColorVSgGGtGGMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v90 = (&v75 - v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v75 - v16;
  v18 = type metadata accessor for Locale.Language();
  v87 = *(v18 - 8);
  v88 = v18;
  MEMORY[0x28223BE20](v18);
  v83 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Locale();
  v84 = *(v20 - 8);
  v85 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v75 - v24;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGMd);
  MEMORY[0x28223BE20](v79);
  v82 = &v75 - v26;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVGMd);
  MEMORY[0x28223BE20](v81);
  v89 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v80 = &v75 - v29;
  v31 = MEMORY[0x28223BE20](v30);
  v86 = &v75 - v32;
  v33 = [a1 symbolName];
  v92 = a5;
  v93 = v12;
  v78 = v17;
  v77 = a4;
  v76 = a3;
  v91 = a1;
  if (v33)
  {
    v34 = v33;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = Image.init(systemName:)();
  }

  else
  {
    result = FIUIStaticWorkoutIconImage();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v37 = result;
    v38 = [result imageWithRenderingMode_];

    v35 = Image.init(uiImage:)();
  }

  v39 = v35;
  WorkoutConfiguration.displayColor.getter();
  v40 = Color.init(uiColor:)();
  v94 = a2;
  v41 = v40;
  KeyPath = swift_getKeyPath();
  v43 = type metadata accessor for Font.Design();
  (*(*(v43 - 8) + 56))(v25, 1, 1, v43);
  v44 = static Font.system(size:weight:design:)();
  _s7SwiftUI4FontV6DesignOSgWOhTm_12(v25, &_s7SwiftUI4FontV6DesignOSgMd);
  v45 = swift_getKeyPath();
  v95 = v39;
  v96 = KeyPath;
  v97 = v41;
  v98 = v45;
  v99 = v44;
  static Font.Weight.regular.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  v46 = v82;
  View.fontWeight(_:)();

  WorkoutConfiguration.displayColor.getter();
  v47 = Color.init(uiColor:)();
  v48 = swift_getKeyPath();
  v49 = (v46 + *(v79 + 36));
  *v49 = v48;
  v49[1] = v47;
  static Locale.current.getter();
  v50 = v83;
  Locale.language.getter();
  v51 = v85;
  v84 = *(v84 + 8);
  (v84)(v22, v85);
  v52 = Locale.Language.characterDirection.getter();
  v53 = v88;
  v54 = *(v87 + 8);
  v54(v50, v88);
  if (v52 == 2)
  {
    v55 = -1.0;
  }

  else
  {
    v55 = 1.0;
  }

  static UnitPoint.center.getter();
  v57 = v56;
  v59 = v58;
  v60 = v80;
  outlined init with take of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v46, v80, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGMd);
  v61 = v60 + *(v81 + 36);
  *v61 = v55;
  *(v61 + 8) = 0x3FF0000000000000;
  *(v61 + 16) = v57;
  *(v61 + 24) = v59;
  v62 = v86;
  outlined init with take of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v60, v86, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVGMd);
  static Locale.current.getter();
  Locale.language.getter();
  (v84)(v22, v51);
  v63 = Locale.Language.characterDirection.getter();
  v54(v50, v53);
  if (v63 == 2)
  {
    v64 = static HorizontalAlignment.trailing.getter();
  }

  else
  {
    v64 = static HorizontalAlignment.leading.getter();
  }

  v65 = v78;
  v66 = v77;
  v67 = v76;
  v68 = v90;
  *v90 = v64;
  *(v68 + 8) = 0;
  *(v68 + 16) = 0;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AKyAKyAA6HStackVyAKyArOyAA5ImageV5ScaleOGGSgGAOyAA4FontVSgGGAOyAA5ColorVSgGGtGGMd);
  closure #1 in closure #1 in closure #1 in WorkoutConfigurationThumbnailView.body.getter(v91, v94, v67, v66, (v68 + *(v69 + 44)));
  outlined init with take of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v68, v65, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAA6HStackVyAGyAnKyAA5ImageV5ScaleOGGSgGAKyAA4FontVSgGGAKyAA5ColorVSgGGtGGMd);
  v70 = v89;
  outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v62, v89, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVGMd);
  v71 = v62;
  v72 = v93;
  outlined init with copy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v65, v93, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAA6HStackVyAGyAnKyAA5ImageV5ScaleOGGSgGAKyAA4FontVSgGGAKyAA5ColorVSgGGtGGMd);
  v73 = v92;
  outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v70, v92, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVGMd);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVG_AA6VStackVyAA05TupleE0VyACyAA4TextVAOySiSgGG_ACyACyAA6HStackVyACyA9_AOyAM0O0OGGSgGAVGASGtGGtMd);
  outlined init with copy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v72, v73 + *(v74 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAA6HStackVyAGyAnKyAA5ImageV5ScaleOGGSgGAKyAA4FontVSgGGAKyAA5ColorVSgGGtGGMd);
  _s7SwiftUI4FontV6DesignOSgWOhTm_12(v65, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAA6HStackVyAGyAnKyAA5ImageV5ScaleOGGSgGAKyAA4FontVSgGGAKyAA5ColorVSgGGtGGMd);
  outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v71, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVGMd);
  _s7SwiftUI4FontV6DesignOSgWOhTm_12(v72, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_AGyAGyAA6HStackVyAGyAnKyAA5ImageV5ScaleOGGSgGAKyAA4FontVSgGGAKyAA5ColorVSgGGtGGMd);
  return outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(v70, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAHSgGG_Qo_ASGAA12_ScaleEffectVGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in WorkoutConfigurationThumbnailView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v59 = a3;
  v60 = a4;
  v58 = a2;
  v5 = a1;
  v56 = a1;
  v65 = a5;
  v6 = type metadata accessor for Font.PrivateDesign();
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x28223BE20](v6);
  v57 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA5ImageV5ScaleOGGSgGAIyAA4FontVSgGGAIyAA5ColorVSgGGMd) - 8;
  MEMORY[0x28223BE20](v64);
  v63 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v54[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v54[-v14];
  v16 = [v5 localizedName];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v66 = v17;
  v67 = v19;
  lazy protocol witness table accessor for type String and conformance String();
  v20 = Text.init<A>(_:)();
  v22 = v21;
  LOBYTE(v5) = v23;
  v24 = type metadata accessor for Font.Design();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  static Font.system(size:weight:design:)();
  _s7SwiftUI4FontV6DesignOSgWOhTm_12(v15, &_s7SwiftUI4FontV6DesignOSgMd);
  v25 = Text.font(_:)();
  v27 = v26;
  v29 = v28;

  outlined consume of Text.Storage(v20, v22, v5 & 1);

  static Font.Weight.bold.getter();
  v30 = Text.fontWeight(_:)();
  v32 = v31;
  LOBYTE(v5) = v33;
  outlined consume of Text.Storage(v25, v27, v29 & 1);

  static Color.white.getter();
  v34 = Text.foregroundColor(_:)();
  v36 = v35;
  v55 = v37;
  v39 = v38;

  outlined consume of Text.Storage(v30, v32, v5 & 1);

  KeyPath = swift_getKeyPath();
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0x4010000000000000;
  v11[16] = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA15ModifiedContentVyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAMyAA5ImageV5ScaleOGGSgGMd);
  closure #1 in closure #1 in closure #1 in closure #1 in WorkoutConfigurationThumbnailView.body.getter(v59, v60, &v11[*(v41 + 44)]);
  static Font.Weight.medium.getter();
  v42 = v57;
  static Font.PrivateDesign.compact.getter();
  v43 = static Font.system(size:weight:design:)();
  (*(v61 + 8))(v42, v62);
  v44 = swift_getKeyPath();
  v45 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA5ImageV5ScaleOGGSgGAIyAA4FontVSgGGMd) + 36)];
  *v45 = v44;
  v45[1] = v43;
  WorkoutConfiguration.displayColor.getter();
  v46 = Color.init(uiColor:)();
  v47 = swift_getKeyPath();
  v48 = v63;
  v49 = &v11[*(v64 + 44)];
  *v49 = v47;
  v49[1] = v46;
  outlined init with copy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v11, v48, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA5ImageV5ScaleOGGSgGAIyAA4FontVSgGGAIyAA5ColorVSgGGMd);
  v50 = v65;
  *v65 = v34;
  v50[1] = v36;
  LOBYTE(v46) = v55 & 1;
  *(v50 + 16) = v55 & 1;
  v50[3] = v39;
  v50[4] = KeyPath;
  v50[5] = 0;
  *(v50 + 48) = 1;
  v51 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_ACyACyAA6HStackVyACyAjGyAA5ImageV5ScaleOGGSgGAGyAA4FontVSgGGAGyAA5ColorVSgGGtMd);
  outlined init with copy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v48, v51 + *(v52 + 48), &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA5ImageV5ScaleOGGSgGAIyAA4FontVSgGGAIyAA5ColorVSgGGMd);
  outlined copy of Text.Storage(v34, v36, v46);

  _s7SwiftUI4FontV6DesignOSgWOhTm_12(v11, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA5ImageV5ScaleOGGSgGAIyAA4FontVSgGGAIyAA5ColorVSgGGMd);
  _s7SwiftUI4FontV6DesignOSgWOhTm_12(v48, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA5ImageV5ScaleOGGSgGAIyAA4FontVSgGGAIyAA5ColorVSgGGMd);
  outlined consume of Text.Storage(v34, v36, v46);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in WorkoutConfigurationThumbnailView.body.getter@<X0>(uint64_t a1@<X2>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA5ImageV5ScaleOGGMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10);
  if (a2)
  {
    v36 = &v36 - v12;
    v37 = v11;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
    type metadata accessor for RaceWorkoutConfiguration();
    v15 = swift_dynamicCastClass();
    v38 = a3;
    if (!v15)
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

    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
    v19._countAndFlagsBits = a1;
    v19._object = a2;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v19);
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v20);
    LocalizedStringKey.init(stringInterpolation:)();
    v21 = Text.init(_:tableName:bundle:comment:)();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    KeyPath = swift_getKeyPath();
    v29 = &v9[*(v7 + 36)];
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
    v31 = *MEMORY[0x277CE1050];
    v32 = type metadata accessor for Image.Scale();
    (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
    *v29 = swift_getKeyPath();
    *v9 = v21;
    *(v9 + 1) = v23;
    v9[16] = v25 & 1;
    *(v9 + 3) = v27;
    *(v9 + 4) = KeyPath;
    *(v9 + 5) = 0;
    v9[48] = 1;
    v33 = v36;
    outlined init with take of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v9, v36, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA5ImageV5ScaleOGGMd);
    v34 = v33;
    v35 = v38;
    outlined init with take of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v34, v38, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA5ImageV5ScaleOGGMd);
    return (*(v37 + 56))(v35, 0, 1, v7);
  }

  else
  {
    v16 = *(v11 + 56);

    return v16(a3, 1, 1, v7, v13);
  }
}

uint64_t outlined init with take of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI4FontV6DesignOSgWOhTm_12(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GA30_GAA06_FrameW0VGAA016_BackgroundStyleQ0VyAZGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_3(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GA30_GAA06_FrameW0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GA30_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGA30_GA30_GA30_GMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAGyACyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_ALyAGyACyAA4TextVAXySiSgGG_ACyACyAEyACyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAJtGGAA14_PaddingLayoutVGMd);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_3(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerVSg_AA6VStackVyAEyAA15ModifiedContentVyALyAA0E0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAQSgGG_Qo_A0_GAA12_ScaleEffectVG_AJyAEyALyAA4TextVAXySiSgGG_ALyALyACyALyA14_AXyAV0S0OGGSgGA3_GA0_GtGGtGGAHtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer?, VStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<HStack<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>?>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>)>>, Spacer?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_3(unint64_t *a1, uint64_t *a2)
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

uint64_t SessionCurrentView.description.getter()
{
  v1 = *v0;
  v2 = 0x697463656E6E6F63;
  v3 = 0x567972616D6D7573;
  v4 = 0x6174537472656C61;
  if (v1 != 4)
  {
    v4 = 0x6F69737365536E69;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x776F64746E756F63;
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

Swift::Int SessionCurrentView.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SessionCurrentView()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SessionCurrentView()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type SessionCurrentView and conformance SessionCurrentView()
{
  result = lazy protocol witness table cache variable for type SessionCurrentView and conformance SessionCurrentView;
  if (!lazy protocol witness table cache variable for type SessionCurrentView and conformance SessionCurrentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SessionCurrentView and conformance SessionCurrentView);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SessionCurrentView()
{
  v1 = *v0;
  v2 = 0x697463656E6E6F63;
  v3 = 0x567972616D6D7573;
  v4 = 0x6174537472656C61;
  if (v1 != 4)
  {
    v4 = 0x6F69737365536E69;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x776F64746E756F63;
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

uint64_t getEnumTagSinglePayload for SessionCurrentView(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SessionCurrentView(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 AlertConfigurationView.init(viewModel:activityType:formattingManager:workoutConfiguration:activityMoveMode:sessionContext:)@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v54 = a5;
  v55 = a7;
  v56 = a4;
  v11 = type metadata accessor for AlertConfigurationContext();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v51);
  v52 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v42 - v16);
  v18 = type metadata accessor for AlertConfigurationSessionContext();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v23 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v21;
  if (a1)
  {
    v25 = v56;
    v26 = a1;
  }

  else
  {
    v45 = v13;
    v46 = v11;
    v47 = 0;
    v27 = a6;
    v28 = *(v19 + 16);
    v29 = v22;
    v50 = v27;
    v28(&v42 - v21, v23);
    type metadata accessor for ActivityPersistingViewModel(0);
    swift_allocObject();
    v44 = v56;
    v48 = a2;
    v30 = a2;
    v49 = a3;
    v43 = a3;
    *v17 = specialized ActivityPersistingViewModel.init(activityType:formattingManager:)(v30, v43);
    swift_storeEnumTagMultiPayload();
    (v28)(v29, v24, v18);
    type metadata accessor for AlertConfigurationViewModel(0);
    v26 = swift_allocObject();
    ObservationRegistrar.init()();
    (*(v19 + 8))(v24, v18);
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v17, v26 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
    v31 = v43;
    *(v26 + 16) = v30;
    *(v26 + 24) = v31;
    v32 = v52;
    outlined init with take of AlertConfigurationViewModel.ViewModelContainer(v17, v52, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21LocalBindingViewModelC_0A4Core17ConfigurationTypeOtMd) + 48);
      v34 = type metadata accessor for ConfigurationType();
      v35 = v45;
      (*(*(v34 - 8) + 32))(v45, v32 + v33, v34);
      v36 = MEMORY[0x277D7E4B8];
      v37 = v46;
      v38 = v53;
    }

    else
    {
      _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v32, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
      v36 = MEMORY[0x277D7E4C0];
      v37 = v46;
      v38 = v53;
      v35 = v45;
    }

    (*(v38 + 104))(v35, *v36, v37);
    (*(v38 + 32))(v26 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v35, v37);
    *(v26 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_workoutConfiguration) = v56;
    *(v26 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_activityMoveMode) = v54;
    (*(v19 + 32))(v26 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_sessionContext, v29, v18);
    a3 = v49;
    a6 = v50;
    a2 = v48;
    v25 = v44;
  }

  AlertConfigurationView.init(viewModel:)(v26, v57);

  (*(v19 + 8))(a6, v18);
  v39 = v57[3];
  v40 = v55;
  *(v55 + 32) = v57[2];
  *(v40 + 48) = v39;
  *(v40 + 64) = v57[4];
  result = v57[1];
  *v40 = v57[0];
  *(v40 + 16) = result;
  return result;
}

uint64_t AlertConfigurationView.init(viewModel:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TargetZone.PrimaryType();
  v72 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v82 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v81 = &v64 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v68 = &v64 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v83 = &v64 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v69 = &v64 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v85 = &v64 - v16;
  MEMORY[0x28223BE20](v15);
  v84 = &v64 - v17;
  v87 = type metadata accessor for TargetZone.ZoneType();
  v70 = *(v87 - 8);
  v18 = MEMORY[0x28223BE20](v87);
  v77 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v78 = &v64 - v21;
  MEMORY[0x28223BE20](v20);
  v79 = &v64 - v22;
  v23 = type metadata accessor for AlertConfigurationContext();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI24PowerZonesEntryViewModelCSgMd);
  State.init(wrappedValue:)();
  v28 = v91;
  v27 = v92;
  v29 = *(a1 + 16);

  v30 = v29;
  v31 = FIUIWorkoutActivityType.supportsPowerZoneAlerts()();

  if (v31)
  {
    (*(v24 + 16))(v26, a1 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v23);
    type metadata accessor for PowerZonesEntryViewModel();
    swift_allocObject();
    v32 = PowerZonesEntryViewModel.init(configurationContext:)(v26);

    v27 = 0;
    v28 = v32;
  }

  v33 = AlertConfigurationViewModel.readTargetZones()();
  v34 = v33;
  v71 = a1;
  v67 = a2;
  v65 = v28;
  if (v33 >> 62)
  {
    goto LABEL_61;
  }

  v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  LODWORD(v80) = *MEMORY[0x277D7DEC0];
  v66 = v27;
  if (v35)
  {
    v36 = 0;
    v75 = v34 & 0xFFFFFFFFFFFFFF8;
    v76 = (v34 & 0xC000000000000001);
    v73 = (v72 + 104);
    v74 = (v70 + 8);
    v37 = (v72 + 8);
    do
    {
      if (v76)
      {
        v38 = MEMORY[0x20F30C990](v36, v34);
        v27 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v36 >= *(v75 + 16))
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          v35 = __CocoaSet.count.getter();
          goto LABEL_5;
        }

        v27 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_17;
        }
      }

      v39 = v79;
      v86 = v38;
      TargetZone.type.getter();
      TargetZone.ZoneType.primaryType.getter();
      (*v74)(v39, v87);
      v88 = *v73;
      v88(v85, v80, v4);
      lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType, MEMORY[0x277D7DED8]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v91 == v89 && v92 == v90)
      {
        v41 = *v37;
        (*v37)(v85, v4);
        v41(v84, v4);

LABEL_20:

        goto LABEL_21;
      }

      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v41 = *v37;
      (*v37)(v85, v4);
      v41(v84, v4);

      if (v40)
      {
        goto LABEL_20;
      }

      ++v36;
    }

    while (v27 != v35);
  }

  v42 = v72;
  v43 = v69;
  v88 = *(v72 + 104);
  v88(v69, v80, v4);
  v86 = specialized static AlertConfigurationView.defaultTargetZone(primaryType:configurationContext:)(v43, v71 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext);
  v41 = *(v42 + 8);
  v41(v43, v4);
LABEL_21:
  v34 = v68;
  v44 = AlertConfigurationViewModel.readTargetZones()();
  v27 = v44;
  if (v44 >> 62)
  {
    v45 = __CocoaSet.count.getter();
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  LODWORD(v84) = *MEMORY[0x277D7DED0];
  if (v45)
  {
    v46 = 0;
    v79 = (v27 & 0xFFFFFFFFFFFFFF8);
    v80 = v27 & 0xC000000000000001;
    v73 = (v72 + 104);
    v74 = (v70 + 8);
    v75 = v27;
    v76 = (v72 + 8);
    while (1)
    {
      if (v80)
      {
        v47 = MEMORY[0x20F30C990](v46, v27);
        v48 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v46 >= *(v79 + 2))
        {
          goto LABEL_59;
        }

        v48 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }
      }

      v49 = v78;
      v85 = v47;
      TargetZone.type.getter();
      TargetZone.ZoneType.primaryType.getter();
      (*v74)(v49, v87);
      v88(v34, v84, v4);
      lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType, MEMORY[0x277D7DED8]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v91 == v89 && v92 == v90)
      {
        break;
      }

      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v41(v34, v4);
      v41(v83, v4);

      if (v50)
      {
        goto LABEL_38;
      }

      ++v46;
      v27 = v75;
      if (v48 == v45)
      {
        goto LABEL_36;
      }
    }

    v41(v34, v4);
    v41(v83, v4);

LABEL_38:
  }

  else
  {
LABEL_36:

    v51 = v69;
    v88(v69, v84, v4);
    v85 = specialized static AlertConfigurationView.defaultTargetZone(primaryType:configurationContext:)(v51, v71 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext);
    v41(v51, v4);
  }

  v52 = AlertConfigurationViewModel.readTargetZones()();
  v53 = v52;
  if (v52 >> 62)
  {
    v54 = __CocoaSet.count.getter();
  }

  else
  {
    v54 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  LODWORD(v84) = *MEMORY[0x277D7DEC8];
  if (v54)
  {
    v27 = 0;
    v83 = (v53 & 0xC000000000000001);
    v80 = v53 & 0xFFFFFFFFFFFFFF8;
    v75 = v72 + 104;
    v76 = (v70 + 8);
    v78 = (v72 + 8);
    v79 = v53;
    while (1)
    {
      if (v83)
      {
        v55 = MEMORY[0x20F30C990](v27, v53);
        v34 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v27 >= *(v80 + 16))
        {
          goto LABEL_60;
        }

        v55 = *(v53 + 8 * v27 + 32);

        v34 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }
      }

      v56 = v77;
      TargetZone.type.getter();
      TargetZone.ZoneType.primaryType.getter();
      (*v76)(v56, v87);
      v88(v82, v84, v4);
      lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType, MEMORY[0x277D7DED8]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v91 == v89 && v92 == v90)
      {
        break;
      }

      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v41(v82, v4);
      v41(v81, v4);

      v53 = v79;
      if (v57)
      {
        goto LABEL_56;
      }

      ++v27;
      if (v34 == v54)
      {
        goto LABEL_54;
      }
    }

    v41(v82, v4);
    v41(v81, v4);

LABEL_56:
    v59 = v71;
  }

  else
  {
LABEL_54:

    v58 = v69;
    v88(v69, v84, v4);
    v59 = v71;
    v55 = specialized static AlertConfigurationView.defaultTargetZone(primaryType:configurationContext:)(v58, v71 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext);

    result = (v41)(v58, v4);
  }

  v61 = v67;
  *v67 = v59;
  v61[1] = 0;
  v62 = v66;
  v61[2] = v65;
  v61[3] = v62;
  v63 = v85;
  v61[4] = v86;
  v61[5] = 0;
  v61[6] = v63;
  v61[7] = 0;
  v61[8] = v55;
  v61[9] = 0;
  return result;
}

uint64_t AlertConfigurationView.viewForConfigurationType(_:sessionContext:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v309 = a2;
  LODWORD(v336) = a1;
  v341 = a3;
  v4 = type metadata accessor for PowerZonesAlertZoneType();
  MEMORY[0x28223BE20](v4 - 8);
  v299 = &v298 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = type metadata accessor for PowerZonesEntryView();
  v307 = *(v311 - 8);
  v6 = *(v307 + 64);
  MEMORY[0x28223BE20](v311);
  v300 = &v298 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v301 = (&v298 - v8);
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI19PowerZonesEntryViewVSgMd);
  MEMORY[0x28223BE20](v317);
  v308 = &v298 - v9;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB014TrackEntryViewVSgAF010PowerZoneshI0VSg_GMd);
  MEMORY[0x28223BE20](v315);
  v316 = (&v298 - v10);
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014TrackEntryViewVSgAD010PowerZonesgH0VSgGMd);
  MEMORY[0x28223BE20](v328);
  v318 = &v298 - v11;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB014TimeSplitsViewVSgAF08DistancehI0VSgGACyAF010TrackEntryI0VSgAF010PowerZoneslI0VSgG_GMd);
  MEMORY[0x28223BE20](v324);
  v327 = (&v298 - v12);
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMd);
  MEMORY[0x28223BE20](v340);
  v331 = &v298 - v13;
  v14 = type metadata accessor for AlertConfigurationSessionContext();
  v305 = *(v14 - 8);
  v306 = v14;
  MEMORY[0x28223BE20](v14);
  v304 = (&v298 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB015AlertsEntryViewVAH_GMd);
  MEMORY[0x28223BE20](v312);
  v313 = &v298 - v16;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB015AlertsEntryViewVAFGMd);
  MEMORY[0x28223BE20](v329);
  v314 = &v298 - v17;
  v332 = type metadata accessor for HeartRateZoneEntryView();
  MEMORY[0x28223BE20](v332);
  v302 = &v298 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v303 = &v298 - v20;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyAA9TupleViewVy07WorkoutB0011AlertsEntryG0V_AGyAH05PacerijG0VSg_AH04RaceijG0VSgtGSgtGAH013HeartRateZonejG0VGACyA2JGGACyACyAH010TimeSplitsG0VSgAH08DistanceqG0VSgGACyAH05TrackjG0VSgAH010PowerZonesjG0VSgGG_GMd);
  MEMORY[0x28223BE20](v337);
  v339 = &v298 - v21;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA9TupleViewVy07WorkoutB0011AlertsEntryG0V_AGyAH05PacerijG0VSg_AH04RaceijG0VSgtGSgtGAH013HeartRateZonejG0VGACyA2JG_GMd);
  MEMORY[0x28223BE20](v323);
  v326 = &v298 - v22;
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVy07WorkoutB0011AlertsEntryG0V_AGyAH05PacerijG0VSg_AH04RaceijG0VSgtGSgtGAH013HeartRateZonejG0V_GMd);
  MEMORY[0x28223BE20](v320);
  v321 = &v298 - v23;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGMd);
  MEMORY[0x28223BE20](v325);
  v322 = &v298 - v24;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMd);
  MEMORY[0x28223BE20](v338);
  v330 = &v298 - v25;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB0011AlertsEntryD0V_ACyAD05PacerfgD0VSg_AD04RacefgD0VSgtGSgtGMd);
  MEMORY[0x28223BE20](v319);
  v310 = &v298 - v26;
  v27 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v27);
  v29 = (&v298 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v32 = (&v298 - v31);
  MEMORY[0x28223BE20](v33);
  v35 = (&v298 - v34);
  MEMORY[0x28223BE20](v36);
  v38 = (&v298 - v37);
  v39 = type metadata accessor for AlertConfigurationContext();
  v334 = *(v39 - 8);
  v335 = v39;
  MEMORY[0x28223BE20](v39);
  v41 = &v298 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v298 = &v298 - v43;
  MEMORY[0x28223BE20](v44);
  v333 = &v298 - v45;
  v46 = type metadata accessor for AlertsEntryView(0);
  MEMORY[0x28223BE20](v46);
  MEMORY[0x28223BE20](v47);
  v51 = *v3;
  v50 = v3[1];
  v52 = v336;
  if (v336 > 3u)
  {
    if (v336 > 5u)
    {
      if (v336 == 6)
      {
        *&v355 = *v3;
        *(&v355 + 1) = v50;
        v72 = v50;
        v73 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
        State.wrappedValue.getter();
        _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v352 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v29, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v29, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
        }

        else
        {
          v186 = *v29;
          type metadata accessor for MainActor();

          v187 = static MainActor.shared.getter();
          v188 = swift_allocObject();
          v189 = MEMORY[0x277D85700];
          v188[2] = v187;
          v188[3] = v189;
          v188[4] = v186;

          v190 = static MainActor.shared.getter();
          v191 = swift_allocObject();
          v191[2] = v190;
          v191[3] = v189;
          v191[4] = v186;
          type metadata accessor for TrackAlerts();
          Binding.init(get:set:)();
          v75 = *(&v355 + 1);
          v74 = v355;
          v76 = v356;
          *&v352 = v73;
          *(&v352 + 1) = v72;
          State.wrappedValue.getter();
          v78 = *(v349 + 16);

          v352 = __PAIR128__(v75, v74);
          *&v353 = v76;
          v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore11TrackAlertsCGMd);
          MEMORY[0x20F30B100](&v349, v192);
          v193 = dispatch thunk of TrackAlerts.lapChangeEnabled.getter();

          v77 = v193 & 1;

          v194 = v78;
        }

        v336 = v76;
        v195 = v316;
        *v316 = v74;
        v195[1] = v75;
        v195[2] = v76;
        v195[3] = v77;
        v195[4] = 0;
        v195[5] = v78;
        swift_storeEnumTagMultiPayload();
        outlined copy of TrackEntryView?(v74, v75, v76, v77, 0, v78);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI14TrackEntryViewVSgMd);
        lazy protocol witness table accessor for type TrackEntryView? and conformance <A> A?(&lazy protocol witness table cache variable for type TrackEntryView? and conformance <A> A?, &_s9WorkoutUI14TrackEntryViewVSgMd, &_s9WorkoutUI14TrackEntryViewVSgMR, lazy protocol witness table accessor for type TrackEntryView and conformance TrackEntryView);
        lazy protocol witness table accessor for type PowerZonesEntryView? and conformance <A> A?();
        v196 = v75;
        v197 = v74;
        v198 = v318;
        _ConditionalContent<>.init(storage:)();
        outlined init with copy of PowerZonesEntryView?(v198, v327, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014TrackEntryViewVSgAD010PowerZonesgH0VSgGMd);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGMd);
        lazy protocol witness table accessor for type _ConditionalContent<TimeSplitsView?, DistanceSplitsView?> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<TrackEntryView?, PowerZonesEntryView?> and conformance <> _ConditionalContent<A, B>();
        v199 = v78;
        v200 = v331;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v198, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014TrackEntryViewVSgAD010PowerZonesgH0VSgGMd);
        outlined init with copy of PowerZonesEntryView?(v200, v339, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMd);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>> and conformance <> _ConditionalContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        v201 = v336;
        outlined consume of TrackEntryView?(v197, v196, v336, v77, 0, v199);
        outlined consume of TrackEntryView?(v197, v196, v201, v77, 0, v199);
        v202 = v200;
        v203 = &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMd;
      }

      else
      {
        v114 = *v3;
        v115 = v3[1];
        v355 = *(v3 + 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB024PowerZonesEntryViewModelCSgGMd);
        State.wrappedValue.getter();
        if (v352)
        {
          *&v355 = v114;
          *(&v355 + 1) = v115;
          v336 = v352;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
          State.wrappedValue.getter();
          v116 = AlertConfigurationViewModel.powerZonesAlertTargetZone.getter();
          v118 = v117;
          v120 = v119;

          *&v355 = v114;
          *(&v355 + 1) = v115;
          State.wrappedValue.getter();
          v329 = *(v352 + 16);

          *&v355 = v114;
          *(&v355 + 1) = v115;
          State.wrappedValue.getter();
          v332 = *(v334 + 16);
          (v332)(v333, v352 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v335);

          *&v355 = v114;
          *(&v355 + 1) = v115;
          State.wrappedValue.getter();
          v330 = *(v352 + 24);

          v121 = v301;
          v326 = v116;
          *v301 = v116;
          v121[1] = v118;
          v122 = v118;
          v123 = v329;
          v121[2] = v120;
          v121[3] = v123;
          v124 = v311;
          v125 = (v121 + *(v311 + 32));
          v329 = type metadata accessor for PowerZonesEntryViewModel();
          lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type PowerZonesEntryViewModel and conformance PowerZonesEntryViewModel, type metadata accessor for PowerZonesEntryViewModel);

          v126 = v122;

          v127 = v120;

          *v125 = ObservedObject.init(wrappedValue:)();
          v125[1] = v128;
          (v332)(v121 + *(v124 + 24), v333, v335);
          *(v121 + *(v124 + 28)) = v330;
          v129 = v326;
          *&v355 = v326;
          *(&v355 + 1) = v126;
          *&v356 = v127;
          v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd);
          MEMORY[0x20F30B100](&v352);
          v131 = v352;
          v132 = v299;
          dispatch thunk of PowerZonesAlertTargetZone.type.getter();

          PowerZonesEntryViewModel.selectedType.setter(v132);
          *&v355 = v129;
          *(&v355 + 1) = v126;
          *&v356 = v127;
          MEMORY[0x20F30B100](&v352, v130);

          v133 = v352;
          v134 = v300;
          _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v121, v300, type metadata accessor for PowerZonesEntryView);
          v135 = v307;
          v136 = (*(v307 + 80) + 16) & ~*(v307 + 80);
          v137 = swift_allocObject();
          outlined init with take of AlertConfigurationViewModel.ViewModelContainer(v134, v137 + v136, type metadata accessor for PowerZonesEntryView);
          dispatch thunk of PowerZonesAlertTargetZone.defaultZonesDidLoad.setter();

          (*(v334 + 8))(v333, v335);
          v138 = v308;
          outlined init with take of AlertConfigurationViewModel.ViewModelContainer(v121, v308, type metadata accessor for PowerZonesEntryView);
          v139 = v311;
          v140 = 0;
        }

        else
        {
          v140 = 1;
          v135 = v307;
          v138 = v308;
          v139 = v311;
        }

        (*(v135 + 56))(v138, v140, 1, v139);
        outlined init with copy of PowerZonesEntryView?(v138, v316, &_s9WorkoutUI19PowerZonesEntryViewVSgMd);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI14TrackEntryViewVSgMd);
        lazy protocol witness table accessor for type TrackEntryView? and conformance <A> A?(&lazy protocol witness table cache variable for type TrackEntryView? and conformance <A> A?, &_s9WorkoutUI14TrackEntryViewVSgMd, &_s9WorkoutUI14TrackEntryViewVSgMR, lazy protocol witness table accessor for type TrackEntryView and conformance TrackEntryView);
        lazy protocol witness table accessor for type PowerZonesEntryView? and conformance <A> A?();
        v236 = v318;
        _ConditionalContent<>.init(storage:)();
        outlined init with copy of PowerZonesEntryView?(v236, v327, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014TrackEntryViewVSgAD010PowerZonesgH0VSgGMd);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGMd);
        lazy protocol witness table accessor for type _ConditionalContent<TimeSplitsView?, DistanceSplitsView?> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<TrackEntryView?, PowerZonesEntryView?> and conformance <> _ConditionalContent<A, B>();
        v237 = v331;
        _ConditionalContent<>.init(storage:)();
        outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v236, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014TrackEntryViewVSgAD010PowerZonesgH0VSgGMd);
        outlined init with copy of PowerZonesEntryView?(v237, v339, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMd);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>> and conformance <> _ConditionalContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v237, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMd);
        v202 = v138;
        v203 = &_s9WorkoutUI19PowerZonesEntryViewVSgMd;
      }
    }

    else
    {
      if (v336 == 4)
      {
        *&v355 = *v3;
        *(&v355 + 1) = v50;
        v61 = v50;
        v62 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
        State.wrappedValue.getter();
        _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v352 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v35, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v35, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
          v349 = 0u;
          v350 = 0u;
          memset(v351, 0, 41);
        }

        else
        {
          v164 = *v35;
          type metadata accessor for MainActor();

          v165 = static MainActor.shared.getter();
          v166 = swift_allocObject();
          v167 = MEMORY[0x277D85700];
          v166[2] = v165;
          v166[3] = v167;
          v166[4] = v164;

          v168 = static MainActor.shared.getter();
          v169 = swift_allocObject();
          v169[2] = v168;
          v169[3] = v167;
          v336 = v164;
          v169[4] = v164;
          type metadata accessor for NLWorkoutSplitStorage();
          Binding.init(get:set:)();
          v170 = v355;
          v171 = v356;
          *&v352 = v62;
          *(&v352 + 1) = v61;
          State.wrappedValue.getter();
          v172 = *(v349 + 16);

          *&v352 = v62;
          *(&v352 + 1) = v61;
          State.wrappedValue.getter();
          v335 = *(v349 + 24);

          type metadata accessor for GoalWorkoutConfiguration();
          v173 = MEMORY[0x20F303500]();
          v175 = v304;
          v174 = v305;
          *v304 = v173;
          v176 = v306;
          (*(v174 + 104))(v175, *MEMORY[0x277D7E688], v306);
          lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type AlertConfigurationSessionContext and conformance AlertConfigurationSessionContext, MEMORY[0x277D7E698]);
          LOBYTE(v168) = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v174 + 8))(v175, v176);
          v177 = v168 ^ 1;
          v352 = v170;
          *&v353 = v171;

          v178 = v171;
          v179 = v172;
          v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo21NLWorkoutSplitStorageCGMd);
          MEMORY[0x20F30B100](&v349);
          v181 = v349;
          [v349 value];
          v183 = v182;

          if (v183 >= 10.0)
          {

            v352 = v170;
            *&v353 = v178;
            MEMORY[0x20F30B100](&v349, v180);
            v238 = v349;
            [v349 value];
            v185 = v239;
          }

          else
          {
            v352 = v170;
            *&v353 = v178;
            MEMORY[0x20F30B100](&v349, v180);
            v184 = v349;
            v185 = NLWorkoutSplitStorage.defaultTargetValue(activityType:)(v179);
          }

          v352 = v170;
          *&v353 = v178;
          MEMORY[0x20F30B100](&v349, v180);

          v240 = v349;
          v241 = [v349 enabled];

          v349 = v170;
          *&v350 = v178;
          *(&v350 + 1) = v185;
          *&v351[0] = 0;
          BYTE8(v351[0]) = v241;
          *&v351[1] = 0;
          *(&v351[1] + 1) = v335;
          *&v351[2] = v179;
          BYTE8(v351[2]) = v177 & 1;
        }

        v354[0] = v351[0];
        v354[1] = v351[1];
        *(&v354[1] + 9) = *(&v351[1] + 9);
        v352 = v349;
        v353 = v350;
        LOBYTE(v343) = 0;
        BYTE9(v354[2]) = 0;
        v228 = &_s9WorkoutUI14TimeSplitsViewVSgMd;
        outlined init with copy of PowerZonesEntryView?(&v349, &v355, &_s9WorkoutUI14TimeSplitsViewVSgMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI14TimeSplitsViewVSgMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI18DistanceSplitsViewVSgMd);
        lazy protocol witness table accessor for type TrackEntryView? and conformance <A> A?(&lazy protocol witness table cache variable for type TimeSplitsView? and conformance <A> A?, &_s9WorkoutUI14TimeSplitsViewVSgMd, &_s9WorkoutUI14TimeSplitsViewVSgMR, lazy protocol witness table accessor for type TimeSplitsView and conformance TimeSplitsView);
        lazy protocol witness table accessor for type TrackEntryView? and conformance <A> A?(&lazy protocol witness table cache variable for type DistanceSplitsView? and conformance <A> A?, &_s9WorkoutUI18DistanceSplitsViewVSgMd, &_s9WorkoutUI18DistanceSplitsViewVSgMR, lazy protocol witness table accessor for type DistanceSplitsView and conformance DistanceSplitsView);
        _ConditionalContent<>.init(storage:)();
        v242 = v358[0];
        v230 = v327;
        v327[2] = v357;
        v230[3] = v242;
        v231 = *(v358 + 10);
      }

      else
      {
        *&v355 = *v3;
        *(&v355 + 1) = v50;
        v107 = v50;
        v108 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
        State.wrappedValue.getter();
        _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v352 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v32, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v32, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
          v109 = 0;
          v110 = 0;
          v349 = 0u;
          v350 = 0u;
          v351[0] = 0u;
        }

        else
        {
          v213 = *v32;
          type metadata accessor for MainActor();

          v214 = static MainActor.shared.getter();
          v215 = swift_allocObject();
          v216 = MEMORY[0x277D85700];
          v215[2] = v214;
          v215[3] = v216;
          v215[4] = v213;

          v217 = static MainActor.shared.getter();
          v218 = swift_allocObject();
          v218[2] = v217;
          v218[3] = v216;
          v218[4] = v213;
          type metadata accessor for NLWorkoutSplitStorage();
          Binding.init(get:set:)();
          v219 = v355;
          v335 = v356;
          *&v352 = v108;
          *(&v352 + 1) = v107;
          State.wrappedValue.getter();
          v336 = *(v349 + 16);

          *&v352 = v108;
          *(&v352 + 1) = v107;
          State.wrappedValue.getter();
          v109 = *(v349 + 24);

          type metadata accessor for GoalWorkoutConfiguration();
          v220 = MEMORY[0x20F303500]();
          v222 = v304;
          v221 = v305;
          *v304 = v220;
          v223 = v306;
          (*(v221 + 104))(v222, *MEMORY[0x277D7E688], v306);
          lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type AlertConfigurationSessionContext and conformance AlertConfigurationSessionContext, MEMORY[0x277D7E698]);
          v224 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v221 + 8))(v222, v223);
          v352 = v219;
          v225 = v335;
          *&v353 = v335;
          v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo21NLWorkoutSplitStorageCGMd);
          MEMORY[0x20F30B100](&v349, v226);
          v227 = v349;
          LOBYTE(v221) = [v349 enabled];

          v110 = (v224 & 1) == 0;
          v349 = v219;
          *&v350 = v225;
          BYTE8(v350) = v221;
          *&v351[0] = 0;
          *(&v351[0] + 1) = v336;
        }

        *&v351[1] = v109;
        BYTE8(v351[1]) = v110;
        v352 = v349;
        v353 = v350;
        v354[0] = v351[0];
        *(v354 + 9) = *(v351 + 9);
        LOBYTE(v343) = 1;
        BYTE9(v354[2]) = 1;
        v228 = &_s9WorkoutUI18DistanceSplitsViewVSgMd;
        outlined init with copy of PowerZonesEntryView?(&v349, &v355, &_s9WorkoutUI18DistanceSplitsViewVSgMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI14TimeSplitsViewVSgMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI18DistanceSplitsViewVSgMd);
        lazy protocol witness table accessor for type TrackEntryView? and conformance <A> A?(&lazy protocol witness table cache variable for type TimeSplitsView? and conformance <A> A?, &_s9WorkoutUI14TimeSplitsViewVSgMd, &_s9WorkoutUI14TimeSplitsViewVSgMR, lazy protocol witness table accessor for type TimeSplitsView and conformance TimeSplitsView);
        lazy protocol witness table accessor for type TrackEntryView? and conformance <A> A?(&lazy protocol witness table cache variable for type DistanceSplitsView? and conformance <A> A?, &_s9WorkoutUI18DistanceSplitsViewVSgMd, &_s9WorkoutUI18DistanceSplitsViewVSgMR, lazy protocol witness table accessor for type DistanceSplitsView and conformance DistanceSplitsView);
        _ConditionalContent<>.init(storage:)();
        v229 = v358[0];
        v230 = v327;
        v327[2] = v357;
        v230[3] = v229;
        v231 = *(v358 + 10);
      }

      *(v230 + 58) = v231;
      v243 = v356;
      *v230 = v355;
      v230[1] = v243;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGMd);
      lazy protocol witness table accessor for type _ConditionalContent<TimeSplitsView?, DistanceSplitsView?> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<TrackEntryView?, PowerZonesEntryView?> and conformance <> _ConditionalContent<A, B>();
      v244 = v331;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of PowerZonesEntryView?(v244, v339, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(&v349, v228);
      v202 = v244;
      v203 = &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014TimeSplitsViewVSgAD08DistancegH0VSgGACyAD010TrackEntryH0VSgAD010PowerZoneskH0VSgGGMd;
    }

    return outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v202, v203);
  }

  else if (v336 > 1u)
  {
    v336 = v49;
    v63 = v51;
    v64 = v50;
    if (v52 == 2)
    {
      v65 = v3[7];
      *&v352 = v3[6];
    }

    else
    {
      v65 = v3[9];
      *&v352 = v3[8];
    }

    *(&v352 + 1) = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd);
    State.projectedValue.getter();
    v331 = *(&v355 + 1);
    v332 = v355;
    v66 = v356;
    *&v355 = v63;
    *(&v355 + 1) = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
    State.wrappedValue.getter();
    v67 = *(v352 + 16);

    *&v355 = v63;
    *(&v355 + 1) = v64;
    State.wrappedValue.getter();
    v68 = *(v352 + 24);

    *&v355 = v63;
    *(&v355 + 1) = v64;
    State.wrappedValue.getter();
    v69 = v333;
    (*(v334 + 16))(v333, v352 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v335);

    *&v355 = v63;
    *(&v355 + 1) = v64;
    State.wrappedValue.getter();
    v70 = *(v352 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_activityMoveMode);

    v71 = v336;
    AlertsEntryView.init(targetZone:activityType:formattingManager:configurationContext:activityMoveMode:)(v332, v331, v66, v67, v68, v69, v70, v336);
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v71, v313, type metadata accessor for AlertsEntryView);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type AlertsEntryView and conformance AlertsEntryView, type metadata accessor for AlertsEntryView);
    v111 = v314;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of PowerZonesEntryView?(v111, v326, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015AlertsEntryViewVAFGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<AlertsEntryView, AlertsEntryView> and conformance <> _ConditionalContent<A, B>();
    v112 = v330;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v111, &_s7SwiftUI19_ConditionalContentVy07WorkoutB015AlertsEntryViewVAFGMd);
    outlined init with copy of PowerZonesEntryView?(v112, v339, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v112, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMd);
    return _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v71, type metadata accessor for AlertsEntryView);
  }

  else if (v336)
  {
    *&v355 = *v3;
    *(&v355 + 1) = v50;
    v79 = v50;
    v80 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
    State.wrappedValue.getter();
    v331 = AlertConfigurationViewModel.heartRateTargetZone.getter();
    v82 = v81;
    v333 = v83;

    *&v355 = v80;
    *(&v355 + 1) = v79;
    State.wrappedValue.getter();
    v336 = *(v352 + 16);

    *&v355 = v80;
    *(&v355 + 1) = v79;
    State.wrappedValue.getter();
    v84 = v335;
    v328 = *(v334 + 16);
    v328(v41, v352 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v335);

    *&v355 = v80;
    *(&v355 + 1) = v79;
    State.wrappedValue.getter();
    v327 = *(v352 + 24);

    v85 = v302;
    v87 = v331;
    v86 = v332;
    *v302 = v331;
    *(v85 + 1) = v82;
    v88 = v82;
    v89 = v333;
    v90 = v336;
    *(v85 + 2) = v333;
    *(v85 + 3) = v90;
    v328(&v85[*(v86 + 24)], v41, v84);
    *&v85[*(v86 + 28)] = v327;
    *&v355 = v87;
    *(&v355 + 1) = v88;
    v91 = v88;
    v92 = v89;
    *&v356 = v89;
    v93 = v87;

    v336 = v90;

    v94 = v92;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd);
    MEMORY[0x20F30B100](&v352);
    v96 = v352;
    v97 = HeartRateTargetZone.selectedRow.getter();

    v98 = v93;
    v99 = &v85[*(v332 + 32)];
    *v99 = v97;
    v99[1] = 0;
    *&v355 = v93;
    *(&v355 + 1) = v91;
    *&v356 = v94;
    MEMORY[0x20F30B100](&v352, v95);
    v100 = v352;
    *&v101 = COERCE_DOUBLE(dispatch thunk of HeartRateTargetZone.customRange.getter());
    LOBYTE(v93) = v102;

    if (v93)
    {
      v103 = v336;
      v104 = [v336 effectiveTypeIdentifier];
      v105 = v104 == 37 || v104 == 13;
      v106 = 120.0;
      if (v105)
      {
        v106 = 130.0;
      }
    }

    else
    {
      v106 = *&v101;
      v103 = v336;
    }

    v204 = &v85[*(v332 + 36)];
    *v204 = v106;
    *(v204 + 1) = 0;
    *&v355 = v98;
    *(&v355 + 1) = v91;
    *&v356 = v94;
    MEMORY[0x20F30B100](&v352, v95);

    v205 = v352;
    dispatch thunk of HeartRateTargetZone.customRange.getter();
    v207 = v206;
    v209 = v208;

    if (v209)
    {
      v210 = [v103 effectiveTypeIdentifier];

      (*(v334 + 8))(v41, v335);
      v211 = v210 == 37 || v210 == 13;
      v212 = 140.0;
      if (v211)
      {
        v212 = 150.0;
      }
    }

    else
    {

      (*(v334 + 8))(v41, v335);
      v212 = v207;
    }

    v232 = &v85[*(v332 + 40)];
    *v232 = v212;
    *(v232 + 1) = 0;
    v233 = v303;
    outlined init with take of AlertConfigurationViewModel.ViewModelContainer(v85, v303, type metadata accessor for HeartRateZoneEntryView);
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v233, v321, type metadata accessor for HeartRateZoneEntryView);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)> and conformance TupleView<A>();
    lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type HeartRateZoneEntryView and conformance HeartRateZoneEntryView, type metadata accessor for HeartRateZoneEntryView);
    v234 = v322;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of PowerZonesEntryView?(v234, v326, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<AlertsEntryView, AlertsEntryView> and conformance <> _ConditionalContent<A, B>();
    v235 = v330;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v234, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGMd);
    outlined init with copy of PowerZonesEntryView?(v235, v339, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v235, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMd);
    return _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v233, type metadata accessor for HeartRateZoneEntryView);
  }

  else
  {
    v336 = v49;
    v53 = v50;
    v54 = v3[5];
    *&v352 = v3[4];
    *(&v352 + 1) = v54;
    v55 = v51;
    v56 = &v298 - v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd);
    State.projectedValue.getter();
    v327 = *(&v355 + 1);
    v328 = v355;
    v324 = v356;
    *&v355 = v55;
    *(&v355 + 1) = v53;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd);
    State.wrappedValue.getter();
    v318 = *(v352 + 16);

    *&v355 = v55;
    *(&v355 + 1) = v53;
    State.wrappedValue.getter();
    v58 = *(v352 + 24);

    *&v355 = v55;
    *(&v355 + 1) = v53;
    State.wrappedValue.getter();
    v59 = v333;
    v316 = *(v334 + 16);
    v317 = v334 + 16;
    (v316)(v333, v352 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v335);

    *&v355 = v55;
    *(&v355 + 1) = v53;
    State.wrappedValue.getter();
    v60 = *(v352 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_activityMoveMode);

    v331 = v56;
    AlertsEntryView.init(targetZone:activityType:formattingManager:configurationContext:activityMoveMode:)(v328, v327, v324, v318, v58, v59, v60, v56);
    *&v355 = v55;
    *(&v355 + 1) = v53;
    State.wrappedValue.getter();
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v352 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v38, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v38, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
      v355 = xmmword_20CB7C920;
      v356 = 0u;
      v357 = 0u;
      memset(v358, 0, sizeof(v358));
      v359 = 0u;
    }

    else
    {
      v315 = *v38;
      *&v355 = v55;
      *(&v355 + 1) = v53;
      State.wrappedValue.getter();
      v141 = *(v352 + 16);

      v142 = FIUIWorkoutActivityType.supportsPacerAlerts.getter();

      v143 = MEMORY[0x277D7E4C0];
      if (v142 & 1) != 0 && (*&v355 = v55, *(&v355 + 1) = v53, State.wrappedValue.getter(), v144 = v333, v313 = v57, v145 = v335, (v316)(v333, v352 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v335), , v146 = *v143, v147 = v334, v148 = v298, (*(v334 + 104))(v298, v146, v145), v149 = static AlertConfigurationContext.== infix(_:_:)(), v150 = *(v147 + 8), v150(v148, v145), v150(v144, v145), (v149))
      {
        type metadata accessor for MainActor();
        v151 = v315;

        v152 = static MainActor.shared.getter();
        v153 = swift_allocObject();
        v154 = MEMORY[0x277D85700];
        v153[2] = v152;
        v153[3] = v154;
        v153[4] = v151;

        v155 = static MainActor.shared.getter();
        v156 = swift_allocObject();
        v156[2] = v155;
        v156[3] = v154;
        v156[4] = v151;
        type metadata accessor for PacerAlerts();
        Binding.init(get:set:)();
        v157 = v355;
        v158 = v356;
        v159 = v55;
        *&v352 = v55;
        v160 = v53;
        *(&v352 + 1) = v53;
        State.wrappedValue.getter();
        v161 = *(v349 + 16);

        v352 = v157;
        *&v353 = v158;
        v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore11PacerAlertsCGMd);
        MEMORY[0x20F30B100](&v349, v162);
        LOBYTE(v152) = dispatch thunk of PacerAlerts.aheadBehindAlertsEnabled.getter();

        v318 = (v152 & 1);
        v328 = v157;

        v327 = *(&v157 + 1);

        v324 = v158;

        v314 = v161;
        v163 = v161;
      }

      else
      {
        v159 = v55;
        v160 = v53;
        v327 = 0;
        v328 = 0;
        v324 = 0;
        v318 = 0;
        v314 = 0;
      }

      v245 = v159;
      *&v355 = v159;
      *(&v355 + 1) = v160;
      v246 = v160;
      State.wrappedValue.getter();
      v247 = *(v352 + 16);

      v248 = [v247 supportsRaceRoute];

      if (v248 && (*&v355 = v159, *(&v355 + 1) = v160, State.wrappedValue.getter(), v249 = v333, v250 = v335, (v316)(v333, v352 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v335), , v251 = v334, v252 = v298, (*(v334 + 104))(v298, *MEMORY[0x277D7E4C0], v250), v253 = static AlertConfigurationContext.== infix(_:_:)(), v254 = *(v251 + 8), v254(v252, v250), v254(v249, v250), (v253 & 1) != 0))
      {
        type metadata accessor for MainActor();
        v255 = v315;

        v256 = static MainActor.shared.getter();
        v257 = swift_allocObject();
        v258 = MEMORY[0x277D85700];
        v257[2] = v256;
        v257[3] = v258;
        v257[4] = v255;

        v259 = static MainActor.shared.getter();
        v260 = swift_allocObject();
        v260[2] = v259;
        v260[3] = v258;
        v260[4] = v255;
        type metadata accessor for RaceAlerts();
        Binding.init(get:set:)();
        v261 = v355;
        v262 = v356;
        *&v352 = v245;
        *(&v352 + 1) = v246;
        State.wrappedValue.getter();
        v263 = *(v349 + 16);

        v352 = v261;
        *&v353 = v262;
        v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10RaceAlertsCGMd);
        MEMORY[0x20F30B100](&v349, v264);
        v265 = dispatch thunk of RaceAlerts.aheadBehindAlertsEnabled.getter();

        v266 = v265 & 1;
        v267 = v261;

        v268 = *(&v261 + 1);

        v269 = v262;

        v270 = v263;
        v271 = v263;
      }

      else
      {
        v267 = 0;
        v268 = 0;
        v269 = 0;
        v266 = 0;
        v270 = 0;
      }

      v272 = v327;
      v273 = v328;
      v274 = v324;
      v275 = v314;
      outlined copy of TrackEntryView?(v328, v327, v324, v318, 0, v314);
      outlined copy of TrackEntryView?(v267, v268, v269, v266, 0, v270);
      v276 = v273;
      v277 = v274;
      v278 = v318;
      v279 = v275;
      outlined consume of TrackEntryView?(v276, v272, v277, v318, 0, v275);
      v335 = v270;
      outlined consume of TrackEntryView?(v267, v268, v269, v266, 0, v270);

      outlined consume of TrackEntryView?(v267, v268, v269, v266, 0, v270);
      v281 = v327;
      v280 = v328;
      v282 = v324;
      outlined consume of TrackEntryView?(v328, v327, v324, v278, 0, v279);
      *&v355 = v280;
      *(&v355 + 1) = v281;
      *&v356 = v282;
      *(&v356 + 1) = v278;
      *&v357 = 0;
      *(&v357 + 1) = v279;
      *&v358[0] = v267;
      *(&v358[0] + 1) = v268;
      *&v358[1] = v269;
      *(&v358[1] + 1) = v266;
      *&v359 = 0;
      *(&v359 + 1) = v335;
    }

    v283 = v336;
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v331, v336, type metadata accessor for AlertsEntryView);
    v345 = v357;
    v346 = v358[0];
    v347 = v358[1];
    v348 = v359;
    v343 = v355;
    v344 = v356;
    v284 = v310;
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOcTm_0(v283, v310, type metadata accessor for AlertsEntryView);
    v285 = (v284 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI15AlertsEntryViewV_05SwiftB005TupleE0VyAA05PacercdE0VSg_AA04RacecdE0VSgtGSgtMd) + 48));
    v287 = v347;
    v286 = v348;
    v289 = v347;
    v288 = v348;
    v351[2] = v347;
    v351[3] = v348;
    v290 = v346;
    v292 = v345;
    v291 = v346;
    v351[0] = v345;
    v351[1] = v346;
    v285[2] = v345;
    v285[3] = v290;
    v285[4] = v287;
    v285[5] = v286;
    v293 = v344;
    v295 = v343;
    v294 = v344;
    v349 = v343;
    v350 = v344;
    *v285 = v343;
    v285[1] = v293;
    v354[2] = v289;
    v354[3] = v288;
    v354[0] = v292;
    v354[1] = v291;
    v352 = v295;
    v353 = v294;
    outlined init with copy of PowerZonesEntryView?(&v355, v342, &_s7SwiftUI9TupleViewVy07WorkoutB0016PacerAlertsEntryD0VSg_AD04RaceghD0VSgtGSgMd);
    outlined init with copy of PowerZonesEntryView?(&v349, v342, &_s7SwiftUI9TupleViewVy07WorkoutB0016PacerAlertsEntryD0VSg_AD04RaceghD0VSgtGSgMd);
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(&v352, &_s7SwiftUI9TupleViewVy07WorkoutB0016PacerAlertsEntryD0VSg_AD04RaceghD0VSgtGSgMd);
    _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v283, type metadata accessor for AlertsEntryView);
    outlined init with copy of PowerZonesEntryView?(v284, v321, &_s7SwiftUI9TupleViewVy07WorkoutB0011AlertsEntryD0V_ACyAD05PacerfgD0VSg_AD04RacefgD0VSgtGSgtGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)> and conformance TupleView<A>();
    lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type HeartRateZoneEntryView and conformance HeartRateZoneEntryView, type metadata accessor for HeartRateZoneEntryView);
    v296 = v322;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of PowerZonesEntryView?(v296, v326, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<AlertsEntryView, AlertsEntryView> and conformance <> _ConditionalContent<A, B>();
    v297 = v330;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v296, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGMd);
    outlined init with copy of PowerZonesEntryView?(v297, v339, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(&v355, &_s7SwiftUI9TupleViewVy07WorkoutB0016PacerAlertsEntryD0VSg_AD04RaceghD0VSgtGSgMd);
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v297, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVy07WorkoutB0011AlertsEntryF0V_AEyAF05PacerhiF0VSg_AF04RacehiF0VSgtGSgtGAF013HeartRateZoneiF0VGACyA2HGGMd);
    outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v284, &_s7SwiftUI9TupleViewVy07WorkoutB0011AlertsEntryD0V_ACyAD05PacerfgD0VSg_AD04RacefgD0VSgtGSgtGMd);
    return _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_1(v331, type metadata accessor for AlertsEntryView);
  }
}

uint64_t AlertConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB028AlertSingleConfigurationViewVAF0g8MultipleiJ0VGs5NeverOGGMd);
  MEMORY[0x28223BE20](v2);
  v4 = v27 - v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAJy07WorkoutB0024AlertSingleConfigurationC0VAK0l8MultiplenC0VGs5NeverOGG_0K4Core10TargetZoneCQo_Md);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = v27 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAJy07WorkoutB0024AlertSingleConfigurationC0VAK0l8MultiplenC0VGs5NeverOGG_0K4Core10TargetZoneCQo__AWQo_Md);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v28 = v27 - v7;
  v8 = v1[3];
  v39 = v1[2];
  v40 = v8;
  v41 = v1[4];
  v9 = v1[1];
  v37 = *v1;
  v38 = v9;
  closure #1 in AlertConfigurationView.body.getter(&v37, v4);
  v34 = v39;
  v27[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd);
  State.wrappedValue.getter();
  v10 = swift_allocObject();
  v11 = v40;
  v10[3] = v39;
  v10[4] = v11;
  v10[5] = v41;
  v12 = v38;
  v10[1] = v37;
  v10[2] = v12;
  outlined init with copy of AlertConfigurationView(&v37, &v34);
  v13 = type metadata accessor for TargetZone();
  v14 = lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>> and conformance <A> Group<A>();
  v15 = lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType(&lazy protocol witness table cache variable for type TargetZone and conformance TargetZone, MEMORY[0x277D7DF08]);
  View.onChange<A>(of:initial:_:)();

  outlined destroy of Group<_ConditionalContent<_ConditionalContent<AlertSingleConfigurationView, AlertMultipleConfigurationView>, Never>>(v4, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB028AlertSingleConfigurationViewVAF0g8MultipleiJ0VGs5NeverOGGMd);
  v34 = v40;
  State.wrappedValue.getter();
  v16 = swift_allocObject();
  v17 = v40;
  v16[3] = v39;
  v16[4] = v17;
  v16[5] = v41;
  v18 = v38;
  v16[1] = v37;
  v16[2] = v18;
  outlined init with copy of AlertConfigurationView(&v37, &v34);
  *&v34 = v2;
  *(&v34 + 1) = v13;
  v35 = v14;
  v36 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v28;
  v21 = v29;
  View.onChange<A>(of:initial:_:)();

  (*(v30 + 8))(v6, v21);
  v34 = v41;
  State.wrappedValue.getter();
  v22 = swift_allocObject();
  v23 = v40;
  v22[3] = v39;
  v22[4] = v23;
  v22[5] = v41;
  v24 = v38;
  v22[1] = v37;
  v22[2] = v24;
  outlined init with copy of AlertConfigurationView(&v37, &v34);
  *&v34 = v21;
  *(&v34 + 1) = v13;
  v35 = OpaqueTypeConformance2;
  v36 = v15;
  swift_getOpaqueTypeConformance2();
  v25 = v31;
  View.onChange<A>(of:initial:_:)();

  return (*(v32 + 8))(v20, v25);
}