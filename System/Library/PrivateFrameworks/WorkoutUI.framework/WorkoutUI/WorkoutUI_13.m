uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance MirrorMetricsViewStackedLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance MirrorMetricsViewStackedLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x277CE1158]);
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance MirrorMetricsViewStackedLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x277CE1160]);
}

void (*protocol witness for Animatable.animatableData.modify in conformance MirrorMetricsViewStackedLayout(uint64_t *a1))(void *a1)
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
  return protocol witness for Animatable.animatableData.modify in conformance MirrorMetricsViewStackedLayout;
}

void protocol witness for Animatable.animatableData.modify in conformance MirrorMetricsViewStackedLayout(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

double specialized MirrorMetricsViewStackedLayout.init(verticallyCenter:)()
{
  v0 = objc_opt_self();

  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = [v1 mainScreen];
  [v5 nativeScale];
  v7 = v6;

  if (v4 == v7)
  {
    v8 = 54.0;
  }

  else
  {
    v8 = 44.0;
  }

  v9 = [v1 mainScreen];
  [v9 scale];
  v11 = v10;

  v12 = [v1 mainScreen];
  [v12 nativeScale];
  v14 = v13;

  if (v11 == v14)
  {
    v15 = 57.0;
  }

  else
  {
    v15 = 67.0;
  }

  v16 = [v0 currentDevice];
  v17 = specialized UIDevice.screenType.getter();

  if (v17 <= 4u)
  {
    if (v17 >= 3u)
    {
      v8 = v15;
    }
  }

  else
  {
    if (v17 > 7u)
    {
      if (v17 == 8)
      {
        *&v18 = 62.0;
      }

      else
      {
        *&v18 = 66.0;
      }
    }

    else if (v17 == 5 || v17 == 6)
    {
      *&v18 = 57.0;
    }

    else
    {
      *&v18 = 60.0;
    }

    v8 = *&v18;
  }

  v19 = [v1 mainScreen];
  [v19 scale];
  v21 = v20;

  v22 = [v1 mainScreen];
  [v22 nativeScale];
  v24 = v23;

  if (v21 != v24)
  {
    v25 = [v1 mainScreen];
    [v25 scale];
    v27 = v26;

    v28 = [v1 mainScreen];
    [v28 nativeScale];
    v30 = v29;

    return v8 * (v27 / v30 * 0.95);
  }

  return v8;
}

uint64_t outlined init with copy of ObservedObject<MetricsPublisher>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14ObservedObjectVy11WorkoutCore16MetricsPublisherCGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetri;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetri)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAF0fI14StyleLayoutKeyVGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalC();
    _sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGSayxGSksWlTm_1(&lazy protocol witness table cache variable for type _TraitWritingModifier<_LayoutTrait<WorkoutViewStyleLayoutKey>> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy07WorkoutB00g9ViewStyleF3KeyVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetri);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetri;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetri)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyA46_SgGGA96_yAF0fI5StyleOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalC();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_3(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetri);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalC()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Condit;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Condit)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Conditio();
    _sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGSayxGSksWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Condit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Condit;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Condit)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGAA30_EnvironmentKeyWritingModifierVyA46_SgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Conditio();
    _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_3(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _Condit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Conditio()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Co;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Co)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<Power();
    _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Co);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Co;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Co)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<Power();
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Co);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMet(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of MetricPlatterType?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for MirrorMetricsViewStackedLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MirrorMetricsViewStackedLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t _sSaySi6offset_So19HKWorkoutMetricTypeV7elementtGSayxGSksWlTm_1(unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type MirrorMetricsViewStackedLayout and conformance MirrorMetricsViewStackedLayout()
{
  result = lazy protocol witness table cache variable for type MirrorMetricsViewStackedLayout and conformance MirrorMetricsViewStackedLayout;
  if (!lazy protocol witness table cache variable for type MirrorMetricsViewStackedLayout and conformance MirrorMetricsViewStackedLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirrorMetricsViewStackedLayout and conformance MirrorMetricsViewStackedLayout);
  }

  return result;
}

uint64_t _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized MirrorMetricsViewStackedLayout.determineHalfWidthPairs(subviews:)(uint64_t a1)
{
  v35 = type metadata accessor for LayoutSubview();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LayoutSubviews();
  _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_0(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x277CDF7F8]);
  v4 = dispatch thunk of Collection.count.getter();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = v4;
    v37 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
    v5 = v37;
    result = dispatch thunk of Collection.startIndex.getter();
    if (v6 < 0)
    {
LABEL_38:
      __break(1u);
      return result;
    }

    v33 = (v2 + 16);
    do
    {
      v8 = dispatch thunk of Collection.subscript.read();
      v9 = v34;
      v10 = v35;
      (*v33)(v34);
      v8(v36, 0);
      lazy protocol witness table accessor for type WorkoutViewStyleLayoutKey and conformance WorkoutViewStyleLayoutKey();
      LayoutSubview.subscript.getter();
      (*(v2 + 8))(v9, v10);
      v11 = v36[0];
      v37 = v5;
      v12 = a1;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v5 = v37;
      }

      *(v5 + 16) = v14 + 1;
      *(v5 + v14 + 32) = v11;
      dispatch thunk of Collection.formIndex(after:)();
      --v6;
      a1 = v12;
    }

    while (v6);
  }

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of Collection.distance(from:to:)();
  if (result < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v15 = result;
  if (result)
  {
    v16 = 0;
    v17 = v5 + 32;
    v18 = MEMORY[0x277D84F90];
    while (2)
    {
      v20 = v16++;
      v21 = *(v18 + 16);
      v22 = (v18 + 40);
      v23 = v21 + 1;
      while (--v23)
      {
        v25 = *(v22 - 1);
        v24 = *v22;
        v22 += 2;
        if (v25 == v20 || v24 == v20)
        {
          goto LABEL_11;
        }
      }

      v27 = *(v5 + 16);
      if (v20 < v27)
      {
        v28 = *(v17 + v20);
        if (v28 == 5)
        {
          if (v16 >= v27)
          {
            goto LABEL_11;
          }
        }

        else if (v16 >= v27 || v28 != 6)
        {
          goto LABEL_11;
        }

        if (*(v17 + v16) - 5 <= 1)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 + 1, 1, v18);
            v18 = result;
          }

          v31 = *(v18 + 16);
          v30 = *(v18 + 24);
          if (v31 >= v30 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v18);
            v18 = result;
          }

          *(v18 + 16) = v31 + 1;
          v19 = v18 + 16 * v31;
          *(v19 + 32) = v20;
          *(v19 + 40) = v16;
        }

LABEL_11:
        if (v16 == v15)
        {
          goto LABEL_35;
        }

        continue;
      }

      break;
    }

    __break(1u);
    goto LABEL_37;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_35:

  return v18;
}

unint64_t lazy protocol witness table accessor for type WorkoutViewStyleLayoutKey and conformance WorkoutViewStyleLayoutKey()
{
  result = lazy protocol witness table cache variable for type WorkoutViewStyleLayoutKey and conformance WorkoutViewStyleLayoutKey;
  if (!lazy protocol witness table cache variable for type WorkoutViewStyleLayoutKey and conformance WorkoutViewStyleLayoutKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutViewStyleLayoutKey and conformance WorkoutViewStyleLayoutKey);
  }

  return result;
}

uint64_t type metadata completion function for TrainingLoadDayWidgetSystemSmallView()
{
  result = type metadata accessor for TrainingLoadDayEntry();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t TrainingLoadDayWidgetSystemSmallView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  MEMORY[0x28223BE20](v1);
  v3 = v10 - v2;
  DayWidgetSystemSmallContentView = type metadata accessor for TrainingLoadDayWidgetSystemSmallContentView(0);
  MEMORY[0x28223BE20](DayWidgetSystemSmallContentView);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TrainingLoadDayEntry(v0, v6);
  *&v6[*(DayWidgetSystemSmallContentView + 24)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  swift_storeEnumTagMultiPayload();
  v10[1] = 0x4034000000000000;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  v7 = *MEMORY[0x277CDFA10];
  v8 = type metadata accessor for DynamicTypeSize();
  (*(*(v8 - 8) + 104))(v3, v7, v8);
  lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, MEMORY[0x277CDFA28]);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(&lazy protocol witness table cache variable for type TrainingLoadDayWidgetSystemSmallContentView and conformance TrainingLoadDayWidgetSystemSmallContentView, type metadata accessor for TrainingLoadDayWidgetSystemSmallContentView);
    lazy protocol witness table accessor for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
    View.dynamicTypeSize<A>(_:)();
    outlined destroy of PartialRangeThrough<DynamicTypeSize>(v3, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
    return outlined destroy of TrainingLoadDayWidgetSystemSmallContentView(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for TrainingLoadDayWidgetSystemSmallView(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of TrainingLoadDayEntry(uint64_t a1, uint64_t a2)
{
  DayEntry = type metadata accessor for TrainingLoadDayEntry();
  (*(*(DayEntry - 8) + 16))(a2, a1, DayEntry);
  return a2;
}

uint64_t TrainingLoadDayWidgetSystemSmallContentView.redactionReasons.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  DayWidgetSystemSmallContentView = type metadata accessor for TrainingLoadDayWidgetSystemSmallContentView(0);
  outlined init with copy of ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>(v1 + *(DayWidgetSystemSmallContentView + 24), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for RedactionReasons();
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

uint64_t TrainingLoadDayWidgetSystemSmallContentView.loadBandTodayPercentage.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RedactionReasons();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  TrainingLoadDayWidgetSystemSmallContentView.redactionReasons.getter(&v18 - v7);
  v9 = MEMORY[0x277CDFB98];
  lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(&lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons, MEMORY[0x277CDFB98]);
  dispatch thunk of SetAlgebra.init()();
  lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(&lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons, v9);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v11(v8, v2);
  if (v10)
  {
    countAndFlagsBits = *(v1 + *(type metadata accessor for TrainingLoadDayEntry() + 24));
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v13 = WorkoutUIBundle.super.isa;
    v19._object = 0xE000000000000000;
    v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v14.value._object = 0xEB00000000656C62;
    v15._object = 0x800000020CB97BE0;
    v15._countAndFlagsBits = 0xD000000000000021;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v13, v16, v19)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t TrainingLoadDayWidgetSystemSmallContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for ContainerBackgroundPlacement();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB0015TrainingLoadDayE0VAA16_FlexFrameLayoutVG_AA6SpacerVAGyAA0E0PAAE10fontDesignyQrAA4FontV0Q0OSgFQOyAGyAGyAGyACyAEyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyATSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_ALGtGGMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07WorkoutB0015TrainingLoadDayG0VAA16_FlexFrameLayoutVG_AA6SpacerVACyAA0G0PAAE10fontDesignyQrAA4FontV0Q0OSgFQOyACyACyACyAEyAGyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyATSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_ALGtGGALGMd);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19containerBackground3for9alignment7contentQrAA09ContainerE9PlacementV_AA9AlignmentVqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyAMy07WorkoutB0015TrainingLoadDayC0VAA16_FlexFrameLayoutVG_AA6SpacerVAMyAcAE10fontDesignyQrAA4FontV0Y0OSgFQOyAMyAMyAMyAOyAQyAA4TextV_A5_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA0_SgGGA15_y12CoreGraphics7CGFloatVGG_Qo_AVGtGGAVG_A11_Qo_Md);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v13 = &v28 - v12;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10unredactedQryFQOyAcAE19containerBackground3for9alignment7contentQrAA09ContainerF9PlacementV_AA9AlignmentVqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyANy07WorkoutB0015TrainingLoadDayC0VAA16_FlexFrameLayoutVG_AA6SpacerVANyAcAE10fontDesignyQrAA4FontV0Z0OSgFQOyANyANyANyAPyARyAA4TextV_A6_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA1_SgGGA16_y12CoreGraphics7CGFloatVGG_Qo_AWGtGGAWG_A12_Qo__Qo_Md);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v15 = &v28 - v14;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVy07WorkoutB0015TrainingLoadDayD0VAA010_FlexFrameG0VG_AA6SpacerVAKyAA0D0PAAE10fontDesignyQrAA4FontV0S0OSgFQOyAKyAKyAKyAA0F0VyAIyAA4TextV_A3_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingX0VyAXSgGGA13_y12CoreGraphics7CGFloatVGG_Qo_APGtGGMd);
  closure #1 in TrainingLoadDayWidgetSystemSmallContentView.body.getter(v2, &v8[*(v16 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>(v8, v11, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB0015TrainingLoadDayE0VAA16_FlexFrameLayoutVG_AA6SpacerVAGyAA0E0PAAE10fontDesignyQrAA4FontV0Q0OSgFQOyAGyAGyAGyACyAEyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyATSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_ALGtGGMd);
  v17 = &v11[*(v9 + 36)];
  v18 = v44;
  *(v17 + 4) = v43;
  *(v17 + 5) = v18;
  *(v17 + 6) = v45;
  v19 = v40;
  *v17 = v39;
  *(v17 + 1) = v19;
  v20 = v42;
  *(v17 + 2) = v41;
  *(v17 + 3) = v20;
  static ContainerBackgroundPlacement.widget.getter();
  static Alignment.center.getter();
  v21 = lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  v22 = MEMORY[0x277CE0F70];
  v23 = MEMORY[0x277CE0F78];
  View.containerBackground<A>(for:alignment:content:)();
  (*(v32 + 8))(v5, v33);
  outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout>(v11, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07WorkoutB0015TrainingLoadDayG0VAA16_FlexFrameLayoutVG_AA6SpacerVACyAA0G0PAAE10fontDesignyQrAA4FontV0Q0OSgFQOyACyACyACyAEyAGyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyATSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_ALGtGGALGMd);
  v35 = v9;
  v36 = v23;
  v37 = v21;
  v38 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v28;
  View.unredacted()();
  (*(v29 + 8))(v13, v25);
  v35 = v25;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v26 = v30;
  View.widgetAccentable(_:)();
  return (*(v31 + 8))(v15, v26);
}

uint64_t closure #1 in TrainingLoadDayWidgetSystemSmallContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v87 = &v75 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontDesignyQrAA4FontV0E0OSgFQOyAA15ModifiedContentVyAKyAKyAA6VStackVyAA05TupleC0VyAA4TextV_AQtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingN0VyAFSgGGA_y12CoreGraphics7CGFloatVGG_Qo_Md);
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x28223BE20](v5);
  v90 = &v75 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontDesignyQrAA4FontV0G0OSgFQOyACyACyACyAA6VStackVyAA05TupleE0VyAA4TextV_AQtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingN0VyAHSgGGA_y12CoreGraphics7CGFloatVGG_Qo_AA16_FlexFrameLayoutVGMd);
  MEMORY[0x28223BE20](v88);
  v94 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v89 = &v75 - v9;
  MEMORY[0x28223BE20](v10);
  v93 = &v75 - v11;
  v12 = type metadata accessor for RedactionReasons();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WidgetKit0A13RenderingModeVSgMd);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v75 - v20;
  DayView = type metadata accessor for TrainingLoadDayView();
  MEMORY[0x28223BE20](DayView);
  v23 = (&v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v83 = &v75 - v25;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVGMd);
  MEMORY[0x28223BE20](v82);
  v86 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v75 - v28;
  MEMORY[0x28223BE20](v30);
  v96 = &v75 - v31;
  DayEntry = type metadata accessor for TrainingLoadDayEntry();
  v32 = a1 + *(DayEntry + 20);
  v33 = *v32;
  v77 = *(v32 + 8);
  v34 = type metadata accessor for WidgetRenderingMode();
  v35 = *(*(v34 - 8) + 56);
  v81 = v21;
  v35(v21, 1, 1, v34);
  v85 = a1;
  TrainingLoadDayWidgetSystemSmallContentView.redactionReasons.getter(v18);
  v36 = MEMORY[0x277CDFB98];
  v79 = lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(&lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons, MEMORY[0x277CDFB98]);
  dispatch thunk of SetAlgebra.init()();
  v78 = lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(&lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons, v36);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v13 + 8);
  v37(v15, v12);
  v84 = v13 + 8;
  v37(v18, v12);
  v38 = a1 ^ 1;
  DayViewModel = type metadata accessor for TrainingLoadDayViewModel();
  v40 = DayViewModel;
  v41 = 1;
  if ((v77 & 1) == 0)
  {
    *(v23 + *(DayViewModel + 28)) = 0x3FE3333333333333;
    *v23 = v33;
    TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)();
    TrainingLoadBand.valueRangeForBand(baseline:)();
    v41 = 0;
    v42 = (v23 + *(v40 + 24));
    *v42 = v43;
    v42[1] = v44;
  }

  (*(*(v40 - 8) + 56))(v23, v41, 1, v40);
  v45 = DayView;
  outlined init with take of WidgetRenderingMode?(v81, v23 + *(DayView + 20), &_s9WidgetKit0A13RenderingModeVSgMd);
  *(v23 + *(v45 + 24)) = v38 & 1;
  v46 = v83;
  outlined init with take of TrainingLoadDayView(v23, v83);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of TrainingLoadDayView(v46, v29);
  v47 = &v29[*(v82 + 36)];
  v48 = v104[9];
  *(v47 + 4) = v104[8];
  *(v47 + 5) = v48;
  *(v47 + 6) = v104[10];
  v49 = v104[5];
  *v47 = v104[4];
  *(v47 + 1) = v49;
  v50 = v104[7];
  *(v47 + 2) = v104[6];
  *(v47 + 3) = v50;
  outlined init with take of WidgetRenderingMode?(v29, v96, &_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVGMd);
  v83 = static HorizontalAlignment.leading.getter();
  v103 = 1;
  v51 = v85;
  closure #1 in closure #1 in TrainingLoadDayWidgetSystemSmallContentView.body.getter(v85, v104);
  *&v102[7] = v104[0];
  *&v102[23] = v104[1];
  *&v102[39] = v104[2];
  *&v102[55] = v104[3];
  LODWORD(v82) = v103;
  TrainingLoadDayWidgetSystemSmallContentView.redactionReasons.getter(v18);
  dispatch thunk of SetAlgebra.init()();
  LOBYTE(v46) = dispatch thunk of static Equatable.== infix(_:_:)();
  v37(v15, v12);
  v37(v18, v12);
  if (v46)
  {
    v84 = *(v51 + *(DayEntry + 32));
  }

  else
  {
    v84 = static Color.gray.getter();
  }

  type metadata accessor for TrainingLoadDayWidgetSystemSmallContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd);
  ScaledMetric.wrappedValue.getter();
  static Font.Weight.semibold.getter();
  v52 = *MEMORY[0x277CE09A0];
  v53 = type metadata accessor for Font.Design();
  v54 = *(v53 - 8);
  v55 = *(v54 + 104);
  v56 = v87;
  v55(v87, v52, v53);
  v57 = *(v54 + 56);
  v57(v56, 0, 1, v53);
  v58 = static Font.system(size:weight:design:)();
  outlined destroy of PartialRangeThrough<DynamicTypeSize>(v56, &_s7SwiftUI4FontV6DesignOSgMd);
  KeyPath = swift_getKeyPath();
  v60 = swift_getKeyPath();
  *(&v98[1] + 1) = *&v102[16];
  *(&v98[2] + 1) = *&v102[32];
  *(&v98[3] + 1) = *&v102[48];
  v97 = v83;
  LOBYTE(v98[0]) = v82;
  *(v98 + 1) = *v102;
  *&v98[4] = *&v102[63];
  *(&v98[4] + 1) = v84;
  *&v99 = KeyPath;
  *(&v99 + 1) = v58;
  *&v100 = v60;
  *(&v100 + 1) = 0x3FE3333333333333;
  v55(v56, v52, v53);
  v57(v56, 0, 1, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGASy12CoreGraphics7CGFloatVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
  v61 = v90;
  View.fontDesign(_:)();
  outlined destroy of PartialRangeThrough<DynamicTypeSize>(v56, &_s7SwiftUI4FontV6DesignOSgMd);
  v101[4] = v98[3];
  v101[5] = v98[4];
  v101[6] = v99;
  v101[7] = v100;
  v101[0] = v97;
  v101[1] = v98[0];
  v101[2] = v98[1];
  v101[3] = v98[2];
  outlined destroy of PartialRangeThrough<DynamicTypeSize>(v101, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGASy12CoreGraphics7CGFloatVGGMd);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v62 = v89;
  (*(v91 + 32))(v89, v61, v92);
  v63 = (v62 + *(v88 + 36));
  v64 = v98[4];
  v63[4] = v98[3];
  v63[5] = v64;
  v63[6] = v99;
  v65 = v98[0];
  *v63 = v97;
  v63[1] = v65;
  v66 = v98[2];
  v63[2] = v98[1];
  v63[3] = v66;
  v67 = v93;
  outlined init with take of VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>(v62, v93, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontDesignyQrAA4FontV0G0OSgFQOyACyACyACyAA6VStackVyAA05TupleE0VyAA4TextV_AQtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingN0VyAHSgGGA_y12CoreGraphics7CGFloatVGG_Qo_AA16_FlexFrameLayoutVGMd);
  v68 = v96;
  v69 = v86;
  outlined init with copy of ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>(v96, v86, &_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVGMd);
  v70 = v94;
  sub_20C67F2D8(v67, v94);
  v71 = v95;
  outlined init with copy of ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>(v69, v95, &_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVGMd);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVG_AA6SpacerVACyAA0I0PAAE10fontDesignyQrAA4FontV0O0OSgFQOyACyACyACyAA6VStackVyAA05TupleI0VyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyAPSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_AHGtMd);
  v73 = v71 + *(v72 + 48);
  *v73 = 0x4028000000000000;
  *(v73 + 8) = 0;
  sub_20C67F2D8(v70, v71 + *(v72 + 64));
  outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout>(v67, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontDesignyQrAA4FontV0G0OSgFQOyACyACyACyAA6VStackVyAA05TupleE0VyAA4TextV_AQtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingN0VyAHSgGGA_y12CoreGraphics7CGFloatVGG_Qo_AA16_FlexFrameLayoutVGMd);
  outlined destroy of PartialRangeThrough<DynamicTypeSize>(v68, &_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVGMd);
  outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout>(v70, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontDesignyQrAA4FontV0G0OSgFQOyACyACyACyAA6VStackVyAA05TupleE0VyAA4TextV_AQtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingN0VyAHSgGGA_y12CoreGraphics7CGFloatVGG_Qo_AA16_FlexFrameLayoutVGMd);
  return outlined destroy of PartialRangeThrough<DynamicTypeSize>(v69, &_s7SwiftUI15ModifiedContentVy07WorkoutB019TrainingLoadDayViewVAA16_FlexFrameLayoutVGMd);
}

uint64_t closure #1 in closure #1 in TrainingLoadDayWidgetSystemSmallContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RedactionReasons();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  TrainingLoadDayWidgetSystemSmallContentView.redactionReasons.getter(&v37 - v9);
  v11 = MEMORY[0x277CDFB98];
  lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(&lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons, MEMORY[0x277CDFB98]);
  dispatch thunk of SetAlgebra.init()();
  lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(&lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons, v11);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  v13(v10, v4);
  if (v12)
  {
    v14 = (a1 + *(type metadata accessor for TrainingLoadDayEntry() + 28));
    countAndFlagsBits = *v14;
    object = v14[1];
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = WorkoutUIBundle.super.isa;
    v42._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0x45554C41564F4ELL;
    v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v19.value._object = 0xEB00000000656C62;
    v18._object = 0xE700000000000000;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v42._countAndFlagsBits = 0;
    v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v42);
    countAndFlagsBits = v21._countAndFlagsBits;
    object = v21._object;
  }

  DayWidgetSystemSmallContent = countAndFlagsBits;
  v40 = object;
  lazy protocol witness table accessor for type String and conformance String();
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  DayWidgetSystemSmallContent = TrainingLoadDayWidgetSystemSmallContentView.loadBandTodayPercentage.getter();
  v40 = v29;
  v30 = Text.init<A>(_:)();
  v32 = v31;
  v38 = v26 & 1;
  LOBYTE(DayWidgetSystemSmallContent) = v26 & 1;
  v34 = v33 & 1;
  v41 = v33 & 1;
  *a2 = v22;
  *(a2 + 8) = v24;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v28;
  *(a2 + 32) = v30;
  *(a2 + 40) = v31;
  *(a2 + 48) = v33 & 1;
  *(a2 + 56) = v35;
  outlined copy of Text.Storage(v22, v24, v26 & 1);

  outlined copy of Text.Storage(v30, v32, v34);

  outlined consume of Text.Storage(v30, v32, v34);

  outlined consume of Text.Storage(v22, v24, v38);
}

uint64_t closure #2 in TrainingLoadDayWidgetSystemSmallContentView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 104))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v3);
  result = Color.init(_:red:green:blue:opacity:)();
  *a1 = result;
  return result;
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

uint64_t outlined destroy of TrainingLoadDayWidgetSystemSmallContentView(uint64_t a1)
{
  DayWidgetSystemSmallContentView = type metadata accessor for TrainingLoadDayWidgetSystemSmallContentView(0);
  (*(*(DayWidgetSystemSmallContentView - 8) + 8))(a1, DayWidgetSystemSmallContentView);
  return a1;
}

void type metadata completion function for TrainingLoadDayWidgetSystemSmallContentView()
{
  type metadata accessor for TrainingLoadDayEntry();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ScaledMetric<CGFloat>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<RedactionReasons>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
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

void type metadata accessor for Environment<RedactionReasons>()
{
  if (!lazy cache variable for type metadata for Environment<RedactionReasons>)
  {
    type metadata accessor for RedactionReasons();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<RedactionReasons>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07WorkoutB0015TrainingLoadDayG0VAA16_FlexFrameLayoutVG_AA6SpacerVACyAA0G0PAAE10fontDesignyQrAA4FontV0Q0OSgFQOyACyACyACyAEyAGyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyATSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_ALGtGGALGMd);
    lazy protocol witness table accessor for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB0015TrainingLoadDayE0VAA16_FlexFrameLayoutVG_AA6SpacerVAGyAA0E0PAAE10fontDesignyQrAA4FontV0Q0OSgFQOyAGyAGyAGyACyAEyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyATSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_ALGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of TrainingLoadDayView(uint64_t a1, uint64_t a2)
{
  DayView = type metadata accessor for TrainingLoadDayView();
  (*(*(DayView - 8) + 32))(a2, a1, DayView);
  return a2;
}

uint64_t outlined init with take of WidgetRenderingMode?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGASy12CoreGraphics7CGFloatVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, Text)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd);
    lazy protocol witness table accessor for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with take of VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of PartialRangeThrough<DynamicTypeSize>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for TransitionDotView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for TransitionDotView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in TransitionDotView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v35 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v38 = static HorizontalAlignment.center.getter();
  v43 = 1;
  static Alignment.center.getter();
  result = _FrameLayout.init(width:height:alignment:)();
  v14 = v44;
  v15 = v45;
  v16 = v46;
  v17 = v47;
  v36 = v49;
  v37 = v48;
  if ((a3 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    v34 = v9;
    v22 = v17;
    v23 = v15;
    v24 = v16;
    v25 = v12;
    v26 = v14;
    v27 = v21;
    os_log(_:dso:log:_:_:)();

    v14 = v26;
    v12 = v25;
    v16 = v24;
    v15 = v23;
    v17 = v22;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(a2, 0);
    result = (*(v35 + 8))(v11, v34);
    if (v42 != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v19 = v39;
    v20 = 0.4;
    goto LABEL_8;
  }

  if (a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  v18 = v39;
  if (!v12 || (v18 = v12 + 1, !__OFADD__(v12, 1)))
  {
    v19 = v39;
    v20 = v18 / v39 * 0.85 + 0.15;
LABEL_8:
    v42 = v15;
    v41 = v17;
    v40 = 1;
    v28 = v43;
    v29 = 360.0 / v19 * v12 * 0.0174532925;
    result = static UnitPoint.center.getter();
    v30 = v37;
    *a5 = v38;
    *(a5 + 8) = 0;
    *(a5 + 16) = v28;
    *(a5 + 24) = v14;
    *(a5 + 32) = v15;
    *(a5 + 40) = v16;
    *(a5 + 48) = v17;
    v31 = v36;
    *(a5 + 56) = v30;
    *(a5 + 64) = v31;
    *(a5 + 72) = v20;
    *(a5 + 80) = 0;
    *(a5 + 88) = 1;
    *(a5 + 96) = v29;
    *(a5 + 104) = v32;
    *(a5 + 112) = v33;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for View.body.getter in conformance TransitionDotView@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  result = static Alignment.top.getter();
  *a1 = result;
  a1[1] = v8;
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA7ForEachVySnySiGSiAA15ModifiedContentVyAA6VStackVyAA05TupleD0VyALyALyAA6CircleVAA06_FrameG0VGAA14_OpacityEffectVG_AA6SpacerVtGGAA09_RotationQ0VGGGMd);
    swift_getKeyPath();
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v4;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;
    outlined copy of Environment<Bool>.Content(v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGGAA09_RotationL0VGMd);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>, Spacer)>>, _RotationEffect> and conformance <> ModifiedContent<A, B>();
    return ForEach<>.init(_:id:content:)();
  }

  return result;
}

uint64_t outlined consume of Environment<Bool>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t outlined copy of Environment<Bool>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>, Spacer)>>, _RotationEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>, Spacer)>>, _RotationEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>, Spacer)>>, _RotationEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGGAA09_RotationL0VGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>, Spacer)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>, Spacer)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>, Spacer)>>, _RotationEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>, Spacer)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for MirrorArcView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MirrorArcView(uint64_t result, int a2, int a3)
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

void *closure #1 in MirrorArcView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  v4 = static Alignment.center.getter();
  v6 = v5;
  closure #1 in closure #1 in MirrorArcView.body.getter(a1);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v11, __src, sizeof(v11));
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(__dst, &v8, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AjEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAA6HStackVyACyAVyACyAT_AEyAA4TextVAA12_FrameLayoutVGtGG_AEyAtZGAVyACyA__ATtGGtGG07WorkoutB025MetricDescriptionCoreFontVGA7_26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAOGA2_tGGAA05_FlexrS0VGtGMd);
  outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v11, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AjEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAA6HStackVyACyAVyACyAT_AEyAA4TextVAA12_FrameLayoutVGtGG_AEyAtZGAVyACyA__ATtGGtGG07WorkoutB025MetricDescriptionCoreFontVGA7_26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAOGA2_tGGAA05_FlexrS0VGtGMd);
  *a2 = v4;
  a2[1] = v6;
  return memcpy(a2 + 2, __dst, 0x308uLL);
}

uint64_t closure #1 in closure #1 in MirrorArcView.body.getter(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  v11 = type metadata accessor for Color.RGBColorSpace();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18[8] = v8;
  v18[9] = v7;
  v18[10] = v5;
  Path.init(_:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  (*(v12 + 104))(v14, *MEMORY[0x277CE0EE0], v11);
  v15 = Color.init(_:red:green:blue:opacity:)();
  *&v18[2] = v8;
  v18[3] = v7;
  v18[4] = v5;
  v18[5] = v3;
  Path.init(_:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v16 = static HorizontalAlignment.center.getter();
  v43 = 0;
  closure #3 in closure #1 in closure #1 in MirrorArcView.body.getter(v33);
  memcpy(v54, v33, sizeof(v54));
  memcpy(v55, v33, 0x1D8uLL);
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v54, v32, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGyAA6HStackVyACyAIyACyAE_AGyAA4TextVAA12_FrameLayoutVGtGG_AGyAeMGAIyACyAN_AEtGGtGG07WorkoutB025MetricDescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGAQtGMd);
  outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v55, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGyAA6HStackVyACyAIyACyAE_AGyAA4TextVAA12_FrameLayoutVGtGG_AGyAeMGAIyACyAN_AEtGGtGG07WorkoutB025MetricDescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGAQtGMd);
  memcpy(&v42[7], v54, 0x1D8uLL);
  LOBYTE(v3) = v43;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29[2] = v51;
  v29[3] = v52;
  v29[4] = v53;
  v29[1] = v50;
  v29[0] = v49;
  v30 = v15;
  *&v21[5] = v15;
  v21[2] = v51;
  v21[3] = v52;
  v21[4] = v53;
  v21[0] = v49;
  v21[1] = v50;
  v31[2] = v46;
  v31[3] = v47;
  v31[4] = v48;
  v31[1] = v45;
  v31[0] = v44;
  *(&v21[6] + 8) = v45;
  *(&v21[7] + 8) = v46;
  *(&v21[8] + 8) = v47;
  *(&v21[9] + 8) = v48;
  *(&v21[5] + 8) = v44;
  v32[0] = v16;
  LOBYTE(v32[1]) = v3;
  memcpy(&v32[1] + 1, v42, 0x1DFuLL);
  v32[35] = v26;
  v32[36] = v27;
  v32[37] = v28;
  v32[31] = v22;
  v32[32] = v23;
  v32[34] = v25;
  v32[33] = v24;
  memcpy(&v21[10] + 8, v32, 0x260uLL);
  memcpy(v10, v21, 0x308uLL);
  v33[0] = v16;
  v33[1] = 0;
  LOBYTE(v33[2]) = v3;
  memcpy(&v33[2] + 1, v42, 0x1DFuLL);
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v34 = v22;
  v35 = v23;
  v37 = v25;
  v36 = v24;
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v29, v19, &_s7SwiftUI15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v31, v19, &_s7SwiftUI13_StrokedShapeVyAA4PathVGMd);
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v32, v19, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA6HStackVyAGyAKyAGyAI_ACyAA4TextVAA12_FrameLayoutVGtGG_ACyAiOGAKyAGyAP_AItGGtGG07WorkoutB025MetricDescriptionCoreFontVGAX26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGAStGGAA05_FlexkL0VGMd);
  outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v33, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA6HStackVyAGyAKyAGyAI_ACyAA4TextVAA12_FrameLayoutVGtGG_ACyAiOGAKyAGyAP_AItGGtGG07WorkoutB025MetricDescriptionCoreFontVGAX26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGAStGGAA05_FlexkL0VGMd);
  v41[2] = v46;
  v41[3] = v47;
  v41[4] = v48;
  v41[1] = v45;
  v41[0] = v44;
  outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v41, &_s7SwiftUI13_StrokedShapeVyAA4PathVGMd);
  v19[2] = v51;
  v19[3] = v52;
  v19[4] = v53;
  v19[0] = v49;
  v19[1] = v50;
  v20 = v15;
  return outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v19, &_s7SwiftUI15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
}

uint64_t closure #3 in closure #1 in closure #1 in MirrorArcView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  v10[0] = 0;
  closure #1 in closure #3 in closure #1 in closure #1 in MirrorArcView.body.getter(__src);
  memcpy(__dst, __src, 0x129uLL);
  memcpy(v21, __src, 0x129uLL);
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(__dst, v23, &_s7SwiftUI9TupleViewVyAA6HStackVyACyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGG_AIyAgMGAEyACyAN_AGtGGtGMd);
  outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v21, &_s7SwiftUI9TupleViewVyAA6HStackVyACyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGG_AIyAgMGAEyACyAN_AGtGGtGMd);
  memcpy(&__src[7], __dst, 0x129uLL);
  v17[0] = v2;
  v17[1] = 0;
  v18 = 0;
  memcpy(v19, __src, sizeof(v19));
  specialized View.metricDescriptionFont(multiline:)(0, v22);
  outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v17, &_s7SwiftUI6HStackVyAA9TupleViewVyACyAEyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGG_AIyAgMGACyAEyAN_AGtGGtGGMd);
  v3 = [objc_opt_self() secondaryLabelColor];
  v4 = Color.init(uiColor:)();
  if (one-time initialization token for heroHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v22[400] = 1;
  v22[392] = v13;
  v22[384] = v15;
  v11[400] = 1;
  memcpy(v23, v22, 0x180uLL);
  v23[48] = v4;
  memcpy(&v11[7], v23, 0x188uLL);
  *a1 = 0;
  *(a1 + 8) = 1;
  memcpy((a1 + 9), v11, 0x18FuLL);
  *(a1 + 408) = 0;
  *(a1 + 416) = 1;
  *(a1 + 424) = v5;
  *(a1 + 432) = v6;
  *(a1 + 440) = v7;
  *(a1 + 448) = v8;
  *(a1 + 456) = v16;
  memcpy(__src, v22, sizeof(__src));
  v25 = v4;
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v23, v10, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAEyAGyAA6SpacerV_ACyAA4TextVAA12_FrameLayoutVGtGG_ACyAiMGAEyAGyAN_AItGGtGG07WorkoutB025MetricDescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  return outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(__src, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAEyAGyAA6SpacerV_ACyAA4TextVAA12_FrameLayoutVGtGG_ACyAiMGAEyAGyAN_AItGGtGG07WorkoutB025MetricDescriptionCoreFontVGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
}

uint64_t closure #1 in closure #3 in closure #1 in closure #1 in MirrorArcView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = static VerticalAlignment.center.getter();
  LOBYTE(v49[0]) = 0;
  closure #1 in closure #1 in closure #3 in closure #1 in closure #1 in MirrorArcView.body.getter(&v57);
  v30 = *&v58[16];
  v31 = *&v58[32];
  v32 = *&v58[48];
  v33 = *&v58[64];
  v28 = v57;
  v29 = *v58;
  v34[2] = *&v58[16];
  v34[3] = *&v58[32];
  v34[4] = *&v58[48];
  v34[5] = *&v58[64];
  v34[0] = v57;
  v34[1] = *v58;
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(&v28, v45, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGMd);
  outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v34, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGMd);
  *&v21[39] = v30;
  *&v21[55] = v31;
  *&v21[71] = v32;
  *&v21[87] = v33;
  *&v21[7] = v28;
  *&v21[23] = v29;
  v2 = v49[0];
  if (one-time initialization token for heroHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v37 = 1;
  v36 = v23;
  v35 = v25;
  v3 = static VerticalAlignment.center.getter();
  LOBYTE(v49[0]) = 0;
  closure #2 in closure #1 in closure #3 in closure #1 in closure #1 in MirrorArcView.body.getter(&v57);
  v40 = *&v58[16];
  v41 = *&v58[32];
  *v42 = *&v58[48];
  *&v42[9] = *&v58[57];
  v38 = v57;
  v39 = *v58;
  *(v44 + 9) = *&v58[57];
  v43[2] = *&v58[16];
  v43[3] = *&v58[32];
  v44[0] = *&v58[48];
  v43[0] = v57;
  v43[1] = *v58;
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(&v38, v45, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA12_FrameLayoutVG_AA6SpacerVtGMd);
  outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v43, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA12_FrameLayoutVG_AA6SpacerVtGMd);
  *&v20[39] = v40;
  *&v20[55] = v41;
  *&v20[71] = *v42;
  *&v20[7] = v38;
  *&v20[23] = v39;
  v4 = v49[0];
  v45[0] = v19;
  v45[1] = 0;
  v46[0] = v2;
  *&v46[33] = *&v21[32];
  *&v46[17] = *&v21[16];
  *&v46[1] = *v21;
  *&v46[96] = *&v21[95];
  *&v46[81] = *&v21[80];
  *&v46[65] = *&v21[64];
  *&v46[49] = *&v21[48];
  v47 = v3;
  v48[0] = v49[0];
  *&v48[17] = *&v20[16];
  *&v48[1] = *v20;
  v5 = *&v42[9];
  *&v48[81] = *&v42[9];
  *&v48[65] = *&v20[64];
  *&v48[49] = *&v20[48];
  *&v48[33] = *&v20[32];
  v6 = *v46;
  v7 = *&v46[32];
  *(a1 + 32) = *&v46[16];
  *(a1 + 48) = v7;
  *a1 = v19;
  *(a1 + 16) = v6;
  v8 = *&v46[48];
  v9 = *&v46[80];
  *(a1 + 80) = *&v46[64];
  *(a1 + 96) = v9;
  *(a1 + 64) = v8;
  v10 = *&v48[16];
  *(a1 + 232) = *&v48[32];
  v11 = v47;
  v12 = *v48;
  *(a1 + 216) = v10;
  *(a1 + 200) = v12;
  *(a1 + 184) = v11;
  v13 = *&v48[48];
  v14 = *&v48[80];
  *(a1 + 264) = *&v48[64];
  *(a1 + 280) = v14;
  *(a1 + 248) = v13;
  v52 = *&v20[16];
  v51 = *v20;
  v15 = v37;
  v16 = v36;
  v17 = v35;
  *(a1 + 112) = *&v46[96];
  *(a1 + 120) = 0;
  *(a1 + 128) = v15;
  *(a1 + 136) = v22;
  *(a1 + 144) = v16;
  *(a1 + 152) = v24;
  *(a1 + 160) = v17;
  *(a1 + 168) = v26;
  *(a1 + 176) = v27;
  *(a1 + 296) = v48[96];
  v49[0] = v3;
  v49[1] = 0;
  v50 = v4;
  v56 = v5;
  v55 = *&v20[64];
  v54 = *&v20[48];
  v53 = *&v20[32];
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v45, &v57, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGGMd);
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(&v47, &v57, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA12_FrameLayoutVG_AA6SpacerVtGGMd);
  outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v49, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA12_FrameLayoutVG_AA6SpacerVtGGMd);
  *&v58[49] = *&v21[48];
  *&v58[65] = *&v21[64];
  *v59 = *&v21[80];
  *&v58[1] = *v21;
  *&v58[17] = *&v21[16];
  v57 = v19;
  v58[0] = v2;
  *&v59[15] = *&v21[95];
  *&v58[33] = *&v21[32];
  return outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(&v57, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAA4TextVAA12_FrameLayoutVGtGGMd);
}

uint64_t closure #1 in closure #1 in closure #3 in closure #1 in closure #1 in MirrorArcView.body.getter@<X0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v22 = v2;
  *(&v22 + 1) = v4;
  LOBYTE(v23) = v6 & 1;
  *(&v23 + 1) = v8;
  v9 = v19;
  v24 = v19;
  v10 = v20;
  v25 = v20;
  *&v17[39] = v19;
  v11 = v21;
  v26 = v21;
  *&v17[71] = v21;
  *&v17[55] = v20;
  *&v17[23] = v23;
  *&v17[7] = v22;
  v12 = *v17;
  *(a1 + 25) = *&v17[16];
  *(a1 + 9) = v12;
  v13 = *&v17[64];
  *(a1 + 88) = *&v17[79];
  *(a1 + 73) = v13;
  v14 = *&v17[32];
  *(a1 + 57) = *&v17[48];
  *(a1 + 41) = v14;
  v18 = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v27[0] = v2;
  v27[1] = v4;
  v28 = v6 & 1;
  v29 = v8;
  v31 = v10;
  v32 = v11;
  v30 = v9;
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(&v22, v16, &_s7SwiftUI15ModifiedContentVyAA4TextVAA12_FrameLayoutVGMd);
  return outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v27, &_s7SwiftUI15ModifiedContentVyAA4TextVAA12_FrameLayoutVGMd);
}

uint64_t closure #2 in closure #1 in closure #3 in closure #1 in closure #1 in MirrorArcView.body.getter@<X0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v20 = v2;
  *(&v20 + 1) = v4;
  LOBYTE(v21) = v6 & 1;
  *(&v21 + 1) = v8;
  v9 = v17;
  v10 = v18;
  v11 = v18;
  v22 = v17;
  v23 = v18;
  v12 = v19;
  v13 = v19;
  v24 = v19;
  v16[80] = 1;
  *(a1 + 32) = v17;
  *(a1 + 48) = v10;
  *(a1 + 64) = v12;
  v14 = v21;
  *a1 = v20;
  *(a1 + 16) = v14;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  v25[0] = v2;
  v25[1] = v4;
  v26 = v6 & 1;
  v27 = v8;
  v29 = v11;
  v30 = v13;
  v28 = v9;
  outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(&v20, v16, &_s7SwiftUI15ModifiedContentVyAA4TextVAA12_FrameLayoutVGMd);
  return outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(v25, &_s7SwiftUI15ModifiedContentVyAA4TextVAA12_FrameLayoutVGMd);
}

uint64_t protocol witness for View.body.getter in conformance MirrorArcView@<X0>(void *(**a1)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v3;
  v11 = *(v1 + 64);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  *a1 = partial apply for closure #1 in MirrorArcView.body.getter;
  a1[1] = v5;
  return outlined init with copy of MirrorArcView(v10, v9);
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>>> and conformance GeometryReader<A>()
{
  result = lazy protocol witness table cache variable for type GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>>> and conformance GeometryReader<A>;
  if (!lazy protocol witness table cache variable for type GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>>> and conformance GeometryReader<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14GeometryReaderVyAA6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA5ColorVGG_AnIyAA6VStackVyAGyAA6SpacerV_AIyAIyAIyAA6HStackVyAGyAZyAGyAX_AIyAA4TextVAA12_FrameLayoutVGtGG_AIyAXA2_GAZyAGyA3__AXtGGtGG07WorkoutB025MetricDescriptionCoreFontVGA11_26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGASGA6_tGGAA05_FlexuV0VGtGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, _StrokedShape<Path>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<Text, _FrameLayout>)>>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(ModifiedContent<Text, _FrameLayout>, Spacer)>>)>>, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<Color>>, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout>)>>> and conformance GeometryReader<A>);
  }

  return result;
}

uint64_t SaveCopyButton.init(workoutConfiguration:isAlreadyStored:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for WorkoutConfigurationDataSource();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  *a3 = EnvironmentObject.init()();
  *(a3 + 8) = v6;
  result = State.init(wrappedValue:)();
  *(a3 + 40) = v8;
  *(a3 + 48) = v9;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = 0;
  return result;
}

void one-time initialization function for confirmButtonTitle()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000020CB97C10;
  v2._countAndFlagsBits = 0xD000000000000023;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  static SaveCopyButton.confirmButtonTitle = v4;
}

void one-time initialization function for saveButtonTitle()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000020CB97C40;
  v2._countAndFlagsBits = 0xD000000000000019;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  static SaveCopyButton.saveButtonTitle = v4;
}

uint64_t SaveCopyButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGACyAoYGGAKtGGGAA017_AllowsHitTestingO0VG07WorkoutB0018DisabledAppearanceO0VGMd);
  MEMORY[0x28223BE20](v3);
  v5 = &v18[-v4];
  v6 = v1[1];
  v23 = *v1;
  *v24 = v6;
  *&v24[16] = v1[2];
  *&v24[32] = *(v1 + 6);
  v7 = swift_allocObject();
  v8 = v1[1];
  *(v7 + 16) = *v1;
  *(v7 + 32) = v8;
  *(v7 + 48) = v1[2];
  *(v7 + 64) = *(v1 + 6);
  v19 = &v23;
  outlined init with copy of SaveCopyButton(&v23, &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedH0VyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAOySiSgGGAKyAmWGGAGtGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedH0VyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAOySiSgGGAKyAmWGGAGtGGMd);
  Button.init(action:label:)();
  v25 = *&v24[8];
  v21 = *&v24[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v9 = v20;
  v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGACyAoYGGAKtGGGAA017_AllowsHitTestingO0VGMd) + 36)] = (v9 & 1) == 0;
  v20 = v25;
  State.projectedValue.getter();
  v10 = *(&v21 + 1);
  v11 = v22;
  v12 = &v5[*(v3 + 36)];
  *v12 = v21;
  *(v12 + 1) = v10;
  v12[16] = v11;
  v20 = *&v24[24];
  State.projectedValue.getter();
  v13 = swift_allocObject();
  v14 = *v24;
  *(v13 + 16) = v23;
  *(v13 + 32) = v14;
  *(v13 + 48) = *&v24[16];
  *(v13 + 64) = *&v24[32];
  outlined init with copy of SaveCopyButton(&v23, &v21);
  type metadata accessor for LocationDisambiguation();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier> and conformance <> ModifiedContent<A, B>();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type LocationDisambiguation and conformance LocationDisambiguation, type metadata accessor for LocationDisambiguation);
  View.sheet<A>(isPresented:onDismiss:content:)();

  outlined destroy of ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier>(v5, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGACyAoYGGAKtGGGAA017_AllowsHitTestingO0VG07WorkoutB0018DisabledAppearanceO0VGMd);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyACyACyAA6ButtonVyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGA_ySiSgGGACyAYA7_GGAUtGGGAA017_AllowsHitTestingV0VG07WorkoutB0018DisabledAppearanceV0VG_A17_22LocationDisambiguationVQo_A_yAA5ColorVSgGGMd);
  v17 = (a1 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = 0;
  return result;
}

void closure #1 in SaveCopyButton.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  v18 = *(a1 + 24);
  v16 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if ((v14 & 1) == 0)
  {
    v5 = *(a1 + 16);
    if ((WorkoutConfiguration.requiresDisambiguation.getter() & 1) == 0)
    {

      if (*a1)
      {
        v10 = *a1;
        WorkoutConfigurationDataSource.saveManagedConfigurationIfNeeded(_:)();

        v16 = v18;
        LOBYTE(v14) = 1;
        State.wrappedValue.setter();
        return;
      }

      type metadata accessor for WorkoutConfigurationDataSource();
      _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
      EnvironmentObject.error()();
      __break(1u);
      goto LABEL_14;
    }

    swift_getObjectType();
    if (!swift_conformsToProtocol2() || !v5)
    {

      v16 = *(a1 + 40);
      v14 = *(a1 + 40);
      v17 = *(&v16 + 1);
      outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>(&v17, &v13, &_s7SwiftUI11AnyLocationCySbGSgMd);
      State.wrappedValue.getter();
      v13 = v16;
      v12[15] = (v15 & 1) == 0;
      State.wrappedValue.setter();
      outlined destroy of ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier>(&v16, &_s7SwiftUI5StateVySbGMd);
      return;
    }

    swift_getObjectType();
    *&v16 = v5;
    UUID.init()();
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
    dispatch thunk of ForcedDisambiguating.copyWithForcedDisambiguation(uuid:)();
    outlined destroy of ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier>(v4, &_s10Foundation4UUIDVSgMd);
    v4 = v14;
    if (v14)
    {
      v7 = *a1;
      if (*a1)
      {
        v8 = v14;
        v9 = v7;
        WorkoutConfigurationDataSource.saveManagedConfigurationIfNeeded(_:)();

        v16 = v18;
        LOBYTE(v17) = 1;
        *&v14 = *(&v18 + 1);
        outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>(&v14, &v13, &_s7SwiftUI11AnyLocationCySbGSgMd);
        State.wrappedValue.setter();

        outlined destroy of ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier>(&v18, &_s7SwiftUI5StateVySbGMd);
        return;
      }

LABEL_14:
      type metadata accessor for WorkoutConfigurationDataSource();
      _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
      v11 = v4;
      EnvironmentObject.error()();
      __break(1u);
      return;
    }
  }
}

uint64_t closure #2 in SaveCopyButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedK0VyAOyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGASySiSgGGAOyAQA_GGAKtGGMd);
  return closure #1 in closure #2 in SaveCopyButton.body.getter(a1, a2 + *(v4 + 44));
}

uint64_t closure #1 in closure #2 in SaveCopyButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKySiSgGGAGyAiSG_GMd);
  MEMORY[0x28223BE20](v47);
  v5 = &v43 - v4;
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGySiSgGGMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAIySiSgGGAEyAgQGGMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v49 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if (v48 == 1)
  {
    v44 = v7;
    v45 = v12;
    v46 = a2;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v16);
    Image.init(systemName:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
    if (one-time initialization token for confirmButtonTitle != -1)
    {
      swift_once();
    }

    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(static SaveCopyButton.confirmButtonTitle);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
    LocalizedStringKey.init(stringInterpolation:)();
    v19 = Text.init(_:tableName:bundle:comment:)();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd) + 36)];
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
    v28 = *MEMORY[0x277CE1050];
    v29 = type metadata accessor for Image.Scale();
    (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
    *v26 = swift_getKeyPath();
    *v9 = v19;
    *(v9 + 1) = v21;
    v9[16] = v23 & 1;
    *(v9 + 3) = v25;
    KeyPath = swift_getKeyPath();
    v31 = &v9[*(v44 + 36)];
    *v31 = KeyPath;
    *(v31 + 1) = 0;
    v31[16] = 1;
    outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>(v9, v5, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGySiSgGGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier>(v9, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGySiSgGGMd);
    v12 = v45;
    a2 = v46;
  }

  else
  {
    if (one-time initialization token for saveButtonTitle != -1)
    {
      swift_once();
    }

    v49 = static SaveCopyButton.saveButtonTitle;
    lazy protocol witness table accessor for type String and conformance String();

    v32 = Text.init<A>(_:)();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = swift_getKeyPath();
    *v5 = v32;
    *(v5 + 1) = v34;
    v5[16] = v36 & 1;
    *(v5 + 3) = v38;
    *(v5 + 4) = v39;
    *(v5 + 5) = 0;
    v5[48] = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
  }

  outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>(v15, v12, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAIySiSgGGAEyAgQGGMd);
  *a2 = 0;
  *(a2 + 8) = 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA19_ConditionalContentVyAA08ModifiedE0VyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKySiSgGGAGyAiSGGACtMd);
  outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>(v12, a2 + *(v40 + 48), &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAIySiSgGGAEyAgQGGMd);
  v41 = a2 + *(v40 + 64);
  *v41 = 0;
  *(v41 + 8) = 1;
  outlined destroy of ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier>(v15, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAIySiSgGGAEyAgQGGMd);
  return outlined destroy of ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier>(v12, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAIySiSgGGAEyAgQGGMd);
}

uint64_t closure #3 in SaveCopyButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = *(a1 + 48);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for LocationDisambiguation();
  v8 = v7[6];
  *(a2 + v8) = 0;
  v9 = (a2 + v7[7]);
  *(a2 + v7[5]) = v4;
  *(a2 + v8) = 1;
  *v9 = partial apply for closure #1 in closure #3 in SaveCopyButton.body.getter;
  v9[1] = v5;
  v10 = v4;
  return outlined init with copy of SaveCopyButton(a1, v12);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGACyAoYGGAKtGGGAA017_AllowsHitTestingO0VG07WorkoutB0018DisabledAppearanceO0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type DisabledAppearanceModifier and conformance DisabledAppearanceModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGACyAoYGGAKtGGGAA017_AllowsHitTestingO0VGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedI0VyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGAMyAoYGGAItGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisabledAppearanceModifier and conformance DisabledAppearanceModifier()
{
  result = lazy protocol witness table cache variable for type DisabledAppearanceModifier and conformance DisabledAppearanceModifier;
  if (!lazy protocol witness table cache variable for type DisabledAppearanceModifier and conformance DisabledAppearanceModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisabledAppearanceModifier and conformance DisabledAppearanceModifier);
  }

  return result;
}

uint64_t closure #1 in closure #3 in SaveCopyButton.body.getter(uint64_t a1, id *a2)
{
  if (*a2)
  {
    v2 = *a2;
    WorkoutConfigurationDataSource.saveManagedConfigurationIfNeeded(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    return State.wrappedValue.setter();
  }

  else
  {
    type metadata accessor for WorkoutConfigurationDataSource();
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t DisabledAppearanceModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v40 = a1;
  v47 = a5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v38);
  v9 = &v38 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA5ColorVSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundvR0VGGMd);
  MEMORY[0x28223BE20](v46);
  v39 = &v38 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAGyAiAE10fontWeightyQrAA4FontV0M0VSgFQOyAA01_g9Modifier_D0Vy07WorkoutB0018DisabledAppearanceO0VG_Qo_AA022_EnvironmentKeyWritingO0VyAA08AnyShapeI0VSgGG_AA08BorderedkI0VQo_AA06_TraituO0VyAA017ListRowBackgroundyT0VGGAGyAiAEAJyQrqd__AaKRd__lFQOyAGyAxZyAA5ColorVSgGG_A5_Qo_A11_G_GMd);
  MEMORY[0x28223BE20](v44);
  v45 = &v38 - v11;
  v12 = type metadata accessor for BorderedButtonStyle();
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGMd);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA08AnyShapeG0VSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundwR0VGGMd);
  MEMORY[0x28223BE20](v43);
  v19 = &v38 - v18;
  v49 = a2;
  v50 = a3;
  v51 = a4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x20F30B100](&v48, v20);
  v21 = v48;
  static Font.Weight.semibold.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0018DisabledAppearanceD0VGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<DisabledAppearanceModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0018DisabledAppearanceD0VGMd);
  View.fontWeight(_:)();
  if (v21 == 1)
  {
    v22 = [objc_opt_self() systemGray2Color];
    v23 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v49 = v23;
    v25 = AnyShapeStyle.init<A>(_:)();
    v26 = &v17[*(v15 + 36)];
    *v26 = KeyPath;
    v26[1] = v25;
    BorderedButtonStyle.init()();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
    v27 = v42;
    View.buttonStyle<A>(_:)();
    (*(v41 + 8))(v14, v27);
    outlined destroy of ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>(v17, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGMd);
    v49 = static Color.clear.getter();
    *&v19[*(v43 + 36)] = AnyView.init<A>(_:)();
    v28 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA08AnyShapeG0VSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundwR0VGGMd;
    outlined init with copy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>(v19, v45, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA08AnyShapeG0VSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundwR0VGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v29 = v19;
  }

  else
  {
    v30 = static Color.white.getter();
    v31 = swift_getKeyPath();
    v32 = &v9[*(v38 + 36)];
    *v32 = v31;
    v32[1] = v30;
    BorderedButtonStyle.init()();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
    v33 = v39;
    v34 = v42;
    View.buttonStyle<A>(_:)();
    (*(v41 + 8))(v14, v34);
    outlined destroy of ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>(v9, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA5ColorVSgGGMd);
    v49 = static Color.clear.getter();
    v35 = AnyView.init<A>(_:)();
    v36 = v45;
    *(v33 + *(v46 + 36)) = v35;
    v28 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA5ColorVSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundvR0VGGMd;
    outlined init with copy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>(v33, v36, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceM0VG_Qo_AA022_EnvironmentKeyWritingM0VyAA5ColorVSgGG_AA08BorderediG0VQo_AA06_TraitsM0VyAA017ListRowBackgroundvR0VGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v29 = v33;
  }

  return outlined destroy of ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>(v29, v28);
}

uint64_t getEnumTagSinglePayload for SaveCopyButton(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SaveCopyButton(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyACyACyAA6ButtonVyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGA_ySiSgGGACyAYA7_GGAUtGGGAA017_AllowsHitTestingV0VG07WorkoutB0018DisabledAppearanceV0VG_A17_22LocationDisambiguationVQo_A_yAA5ColorVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA012_ConditionalD0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQySiSgGGACyAoYGGAKtGGGAA017_AllowsHitTestingO0VG07WorkoutB0018DisabledAppearanceO0VGMd);
    type metadata accessor for LocationDisambiguation();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier> and conformance <> ModifiedContent<A, B>();
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type LocationDisambiguation and conformance LocationDisambiguation, type metadata accessor for LocationDisambiguation);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisabledAppearanceModifier(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DisabledAppearanceModifier(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA5ColorVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0018DisabledAppearanceD0VGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<DisabledAppearanceModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0018DisabledAppearanceD0VGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA01_e9Modifier_D0Vy07WorkoutB0018DisabledAppearanceI0VG_Qo_AA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0018DisabledAppearanceD0VGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<DisabledAppearanceModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0018DisabledAppearanceD0VGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_31()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, Spacer)>>>, _AllowsHitTestingModifier>, DisabledAppearanceModifier>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAEyAgAE10fontWeightyQrAA4FontV0L0VSgFQOyAA01_f9Modifier_D0Vy07WorkoutB0018DisabledAppearanceN0VG_Qo_AA022_EnvironmentKeyWritingN0VyAA08AnyShapeH0VSgGG_AA08BorderedjH0VQo_AA06_TraittN0VyAA017ListRowBackgroundxS0VGGAEyAgAEAHyQrqd__AaIRd__lFQOyAEyAvXyAA5ColorVSgGG_A3_Qo_A9_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for AlertsButton()
{
  result = type metadata singleton initialization cache for AlertsButton;
  if (!type metadata singleton initialization cache for AlertsButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AlertsButton()
{
  type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>();
  if (v0 <= 0x3F)
  {
    _sSo23FIUIWorkoutActivityTypeCMaTm_3(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
    if (v1 <= 0x3F)
    {
      _sSo23FIUIWorkoutActivityTypeCMaTm_3(319, &lazy cache variable for type metadata for FIUIFormattingManager);
      if (v2 <= 0x3F)
      {
        type metadata accessor for AlertConfigurationContext();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Binding<[TargetZone]>(319, &lazy cache variable for type metadata for Binding<[TargetZone]>, &_sSay11WorkoutCore10TargetZoneCGMd, &_sSay11WorkoutCore10TargetZoneCGMR, MEMORY[0x277CE11F8]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Binding<HeartRateTargetZone>(319, &lazy cache variable for type metadata for Binding<HeartRateTargetZone>, MEMORY[0x277D7E2E8], MEMORY[0x277CE11F8]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Binding<HeartRateTargetZone>(319, &lazy cache variable for type metadata for Binding<PowerZonesAlertTargetZone>, MEMORY[0x277D7E580], MEMORY[0x277CE11F8]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Binding<HeartRateTargetZone>(319, &lazy cache variable for type metadata for WorkoutConfiguration?, MEMORY[0x277D7DA50], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for HKActivityMoveMode(319);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for Binding<[TargetZone]>(319, &lazy cache variable for type metadata for State<AlertConfigurationViewModel?>, &_s9WorkoutUI27AlertConfigurationViewModelCSgMd, &_s9WorkoutUI27AlertConfigurationViewModelCSgMR, MEMORY[0x277CE10B8]);
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

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_3(uint64_t a1, unint64_t *a2)
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

void type metadata accessor for Binding<HeartRateTargetZone>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for Binding<[TargetZone]>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t AlertsButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB0018AlertConfigurationC0V_SSQo_Md);
  MEMORY[0x28223BE20](v52);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAEyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedF0VyAkA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessoryfI0VyAEyAEyAOyAA5ImageVAA016_ForegroundStyleP0VyAA14TintShapeStyleVGGA14_GA2_GAA6VStackVyAEyAEyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGGGAA0I0PAAE15navigationTitleyQrqd__SyRd__lFQOyAW018AlertConfigurationI0V_SSQo_GMd);
  v53 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE5sheet4item9onDismiss7contentQrAA7BindingVyqd__SgG_yycSgqd_0_qd__cts12IdentifiableRd__AaFRd_0_r0_lFQOyAA6ButtonVyAA14NavigationLinkVyACyAA6HStackVyACyACyAA05TupleF0VyAA4TextV_AA6SpacerVAA08ModifiedD0VyA_AA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGtGA3_yA3_yA_07WorkoutB017HeaderHyphenationVGA8_GGs5NeverOGGA3_yA11_023AlignedLeadingAccessorydF0VyACyACyA3_yAA5ImageVAA016_ForegroundStyleY0VyAA14TintShapeStyleVGGA30_GA18_GAA6VStackVyACyACyAYyA15__A9_tGA15_GA18_GGGA5_yAA5ColorVSgGGGAA05EmptyF0VGG_A11_018AlertConfigurationF5ModelCAA0oF0VyAgAE7toolbarAKQrqd__yXE_tAA07ToolbarD0Rd__lFQOyA3_yA11_018AlertConfigurationF0VA43_G_AA07ToolbarD7BuilderV10buildBlockyQrxAAA55_RzlFZQOy_AA11ToolbarItemVyytASyAA07DefaultN5LabelVGGQo_Qo_GQo_AUyA45_AgAE15navigationTitleyQrqd__SyRd__lFQOyA57__SSQo_G_GMd);
  MEMORY[0x28223BE20](v56);
  v8 = &v47 - v7;
  v48 = type metadata accessor for AlertsButton();
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v48);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAGyAGyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedG0VyAmA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGtGAQyAQyAM07WorkoutB017HeaderHyphenationVGAVGGs5NeverOGGAQyAY023AlignedLeadingAccessorygJ0VyAGyAGyAQyAA5ImageVAA016_ForegroundStyleQ0VyAA14TintShapeStyleVGGA16_GA4_GAA6VStackVyAGyAGyAKyA1__AWtGA1_GA4_GGGASyAA5ColorVSgGGGAA05EmptyJ0VGGMd);
  v49 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v47 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet4item9onDismiss7contentQrAA7BindingVyqd__SgG_yycSgqd_0_qd__cts12IdentifiableRd__AaBRd_0_r0_lFQOyAA6ButtonVyAA14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyASyASyAA05TupleC0VyAA4TextV_AA6SpacerVAA08ModifiedO0VyAyA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGtGA1_yA1_yAY07WorkoutB017HeaderHyphenationVGA6_GGs5NeverOGGA1_yA9_023AlignedLeadingAccessoryoC0VyASyASyA1_yAA5ImageVAA016_ForegroundStyleX0VyAA14TintShapeStyleVGGA28_GA16_GAA6VStackVyASyASyAWyA13__A7_tGA13_GA16_GGGA3_yAA5ColorVSgGGGAA05EmptyC0VGG_A9_018AlertConfigurationC5ModelCAA0lC0VyAcAE7toolbarAGQrqd__yXE_tAA07ToolbarO0Rd__lFQOyA1_yA9_018AlertConfigurationC0VA41_G_AA07ToolbarO7BuilderV10buildBlockyQrxAAA53_RzlFZQOy_AA11ToolbarItemVyytAOyAA07DefaultK5LabelVGGQo_Qo_GQo_Md);
  v51 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v50 = &v47 - v13;
  v14 = AlertsButton.makeViewModel()();
  v15 = static Platform.current.getter();
  v61 = a1;
  v60 = v4;
  v59 = v8;
  v54 = v14;
  if (v15)
  {
    v55 = &v47;
    MEMORY[0x28223BE20](v15);

    AlertConfigurationView.init(viewModel:)(v16, &v63);
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = WorkoutUIBundle.super.isa;
    v73._object = 0xE000000000000000;
    v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v18.value._object = 0xEB00000000656C62;
    v19._object = 0x800000020CB94110;
    v19._countAndFlagsBits = 0xD000000000000029;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v73._countAndFlagsBits = 0;
    v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v18, v17, v20, v73);

    v62 = v21;
    v22 = lazy protocol witness table accessor for type AlertConfigurationView and conformance AlertConfigurationView();
    v23 = lazy protocol witness table accessor for type String and conformance String();
    v24 = MEMORY[0x277D837D0];
    View.navigationTitle<A>(_:)();

    v69 = v64;
    v70 = v65;
    v71 = v66;
    v72 = v67;
    v68 = v63;
    outlined destroy of AlertConfigurationView(&v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6HStackVyACyACyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGAMyAU023AlignedLeadingAccessorydG0VyACyACyAMyAA5ImageVAA016_ForegroundStyleN0VyAA09TintShapeY0VGGA12_GA0_GAA6VStackVyACyACyAGyAY_AStGAYGA0_GGGAOyAA5ColorVSgGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>();
    *&v63 = &type metadata for AlertConfigurationView;
    *(&v63 + 1) = v24;
    *&v64 = v22;
    *(&v64 + 1) = v23;
    swift_getOpaqueTypeConformance2();
    NavigationLink.init(destination:label:)();
    v25 = v53;
    v26 = v60;
    (*(v53 + 16))(v59, v6, v60);
    swift_storeEnumTagMultiPayload();
    v27 = type metadata accessor for AlertConfigurationViewModel(255);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedH0Vy07WorkoutB0018AlertConfigurationD0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA6ButtonVyAA07DefaultV5LabelVGGQo_Qo_GMd);
    v29 = lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type Button<NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAGyAGyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedG0VyAmA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGtGAQyAQyAM07WorkoutB017HeaderHyphenationVGAVGGs5NeverOGGAQyAY023AlignedLeadingAccessorygJ0VyAGyAGyAQyAA5ImageVAA016_ForegroundStyleQ0VyAA14TintShapeStyleVGGA16_GA4_GAA6VStackVyAGyAGyAKyA1__AWtGA1_GA4_GGGASyAA5ColorVSgGGGAA05EmptyJ0VGGMd);
    v30 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type AlertConfigurationViewModel and conformance AlertConfigurationViewModel, type metadata accessor for AlertConfigurationViewModel);
    v31 = lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationView<<<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedH0Vy07WorkoutB0018AlertConfigurationD0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA6ButtonVyAA07DefaultV5LabelVGGQo_Qo_GMd);
    *&v63 = v57;
    *(&v63 + 1) = v27;
    *&v64 = v28;
    *(&v64 + 1) = v29;
    *&v65 = v30;
    *(&v65 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, <<opaque return type of View.navigationTitle<A>(_, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAEyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedF0VyAkA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessoryfI0VyAEyAEyAOyAA5ImageVAA016_ForegroundStyleP0VyAA14TintShapeStyleVGGA14_GA2_GAA6VStackVyAEyAEyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGGGAA0I0PAAE15navigationTitleyQrqd__SyRd__lFQOyAW018AlertConfigurationI0V_SSQo_GMd);
    _ConditionalContent<>.init(storage:)();

    return (*(v25 + 8))(v6, v26);
  }

  else
  {
    outlined init with copy of AlertsButton(v2, &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlertsButton);
    v33 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v47 = v33 + v10;
    v34 = (v33 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = v14;
    v36 = swift_allocObject();
    _s9WorkoutUI12AlertsButtonVWObTm_0(v11, v36 + v33, type metadata accessor for AlertsButton);
    v52 = &v47;
    *(v36 + v34) = v35;
    MEMORY[0x28223BE20](v35);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAEyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedF0VyAkA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessoryfI0VyAEyAEyAOyAA5ImageVAA016_ForegroundStyleP0VyAA14TintShapeStyleVGGA14_GA2_GAA6VStackVyAEyAEyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGGGAA05EmptyI0VGMd);
    v53 = MEMORY[0x277CDD938];
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAEyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedF0VyAkA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessoryfI0VyAEyAEyAOyAA5ImageVAA016_ForegroundStyleP0VyAA14TintShapeStyleVGGA14_GA2_GAA6VStackVyAEyAEyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGGGAA05EmptyI0VGMd);
    Button.init(action:label:)();
    v63 = *(v2 + *(v48 + 52));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCSgGMd);
    State.projectedValue.getter();
    v48 = v68;
    v52 = v69;
    outlined init with copy of AlertsButton(v2, v11, type metadata accessor for AlertsButton);
    v37 = swift_allocObject();
    _s9WorkoutUI12AlertsButtonVWObTm_0(v11, v37 + v33, type metadata accessor for AlertsButton);
    v38 = type metadata accessor for AlertConfigurationViewModel(0);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedH0Vy07WorkoutB0018AlertConfigurationD0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA6ButtonVyAA07DefaultV5LabelVGGQo_Qo_GMd);
    v40 = lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type Button<NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAGyAGyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedG0VyAmA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGtGAQyAQyAM07WorkoutB017HeaderHyphenationVGAVGGs5NeverOGGAQyAY023AlignedLeadingAccessorygJ0VyAGyAGyAQyAA5ImageVAA016_ForegroundStyleQ0VyAA14TintShapeStyleVGGA16_GA4_GAA6VStackVyAGyAGyAKyA1__AWtGA1_GA4_GGGASyAA5ColorVSgGGGAA05EmptyJ0VGGMd);
    *&v46 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type AlertConfigurationViewModel and conformance AlertConfigurationViewModel, type metadata accessor for AlertConfigurationViewModel);
    *(&v46 + 1) = lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationView<<<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedH0Vy07WorkoutB0018AlertConfigurationD0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA6ButtonVyAA07DefaultV5LabelVGGQo_Qo_GMd);
    v41 = v50;
    v42 = v57;
    v43 = v55;
    View.sheet<A, B>(item:onDismiss:content:)();

    (*(v49 + 8))(v43, v42);
    v44 = v51;
    v45 = v58;
    (*(v51 + 16))(v59, v41, v58);
    swift_storeEnumTagMultiPayload();
    *&v68 = v42;
    *(&v68 + 1) = v38;
    *&v69 = v39;
    *(&v69 + 1) = v40;
    v70 = v46;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, <<opaque return type of View.navigationTitle<A>(_, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAEyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedF0VyAkA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessoryfI0VyAEyAEyAOyAA5ImageVAA016_ForegroundStyleP0VyAA14TintShapeStyleVGGA14_GA2_GAA6VStackVyAEyAEyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGGGAA0I0PAAE15navigationTitleyQrqd__SyRd__lFQOyAW018AlertConfigurationI0V_SSQo_GMd);
    _ConditionalContent<>.init(storage:)();

    return (*(v44 + 8))(v41, v45);
  }
}

uint64_t AlertsButton.makeViewModel()()
{
  v1 = v0;
  v2 = type metadata accessor for AlertConfigurationSessionContext();
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x28223BE20](v2);
  v64 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ConfigurationType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AlertConfigurationContext();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v62 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v59 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v59);
  v61 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = (&v50 - v19);
  v21 = type metadata accessor for AlertsButton();
  (*(v9 + 16))(v13, v1 + v21[7], v8);
  v22 = (*(v9 + 88))(v13, v8);
  v23 = *MEMORY[0x277D7E4B8];
  v63 = v8;
  v56 = v5;
  v57 = v4;
  v60 = v9;
  v55 = v23;
  if (v22 == v23)
  {
    (*(v9 + 96))(v13, v8);
    v58 = *(v5 + 32);
    v58(v7, v13, v4);
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21LocalBindingViewModelC_0A4Core17ConfigurationTypeOtMd) + 48);
    v24 = (v1 + v21[8]);
    v69 = *v24;
    v70 = *(v24 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay11WorkoutCore10TargetZoneCGGMd);
    Binding.projectedValue.getter();
    v53 = v67;
    v52 = v68;
    v25 = (v1 + v21[9]);
    v69 = *v25;
    v70 = *(v25 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd);
    Binding.projectedValue.getter();
    v26 = v67;
    v51 = v68;
    v27 = (v1 + v21[10]);
    v69 = *v27;
    v70 = *(v27 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd);
    Binding.projectedValue.getter();
    v28 = v67;
    type metadata accessor for LocalBindingViewModel(0);
    v50 = v68;
    v29 = swift_allocObject();
    ObservationRegistrar.init()();
    *(v29 + 16) = v53;
    *(v29 + 24) = v52;
    *(v29 + 40) = v26;
    *(v29 + 48) = v51;
    *(v29 + 64) = v28;
    *(v29 + 72) = v50;
    *v20 = v29;
    v58(v20 + v54, v7, v4);
  }

  else
  {
    if (v22 != *MEMORY[0x277D7E4C0])
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v30 = *(v1 + 16);
    v31 = *(v1 + 24);
    type metadata accessor for ActivityPersistingViewModel(0);
    swift_allocObject();
    v32 = v30;
    v33 = v31;
    v34 = specialized ActivityPersistingViewModel.init(activityType:formattingManager:)(v32, v33);

    *v20 = v34;
  }

  swift_storeEnumTagMultiPayload();
  outlined init with copy of AlertsButton(v20, v17, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  v35 = *(v1 + 16);
  v36 = *(v1 + 24);
  v37 = *(v1 + v21[11]);
  v58 = *(v1 + v21[12]);
  (*(v65 + 104))(v64, *MEMORY[0x277D7E690], v66);
  type metadata accessor for AlertConfigurationViewModel(0);
  v38 = swift_allocObject();
  v39 = v37;
  v40 = v35;
  v41 = v36;
  ObservationRegistrar.init()();
  outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v20);
  outlined init with copy of AlertsButton(v17, v38 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  *(v38 + 16) = v40;
  *(v38 + 24) = v41;
  v42 = v17;
  v43 = v61;
  _s9WorkoutUI12AlertsButtonVWObTm_0(v42, v61, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21LocalBindingViewModelC_0A4Core17ConfigurationTypeOtMd);
    v45 = v62;
    (*(v56 + 32))(v62, v43 + *(v44 + 48), v57);
    v46 = v63;
    v47 = v60;
    v48 = v55;
  }

  else
  {
    outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v43);
    v48 = *MEMORY[0x277D7E4C0];
    v45 = v62;
    v46 = v63;
    v47 = v60;
  }

  (*(v47 + 104))(v45, v48, v46);
  (*(v47 + 32))(v38 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v45, v46);
  *(v38 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_workoutConfiguration) = v37;
  *(v38 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_activityMoveMode) = v58;
  (*(v65 + 32))(v38 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_sessionContext, v64, v66);
  return v38;
}

uint64_t closure #1 in AlertsButton.body.getter()
{
  type metadata accessor for AlertsButton();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCSgGMd);
  return State.wrappedValue.setter();
}

uint64_t closure #2 in AlertsButton.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6HStackVyACyACyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGAMyAU023AlignedLeadingAccessorydG0VyACyACyAMyAA5ImageVAA016_ForegroundStyleN0VyAA09TintShapeY0VGGA12_GA0_GAA6VStackVyACyACyAGyAY_AStGAYGA0_GGGAOyAA5ColorVSgGGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>();
  return NavigationLink.init(destination:label:)();
}

uint64_t AlertsButton.platformAlertsButtonLabel()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA012_ConditionalD0VyAHyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeM0VGGAPGs5NeverOGAA6VStackVyAHyAHyAA05TupleI0VyACyACyAA4TextVAD17HeaderHyphenationVGAA022_EnvironmentKeyWritingN0VyAA0T9AlignmentOGG_ACyAZA6_GtGA7_GASGGGA3_yAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6HStackVyACyACyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAkA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessorydH0VyACyACyAOyAA5ImageVAA016_ForegroundStyleO0VyAA09TintShapeZ0VGGA14_GA2_GAA6VStackVyACyACyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGG_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  if (static Platform.current.getter())
  {
    v29 = static VerticalAlignment.center.getter();
    closure #1 in AlertsButton.watchAlertsButtonLabel()(v2, v6);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB0012_ConditionalF0VyAFyAD08ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeM0VGGAPGs5NeverOGAD6VStackVyAFyAFyAD05TupleG0VyAHyAHyAD4TextVAA17HeaderHyphenationVGAD022_EnvironmentKeyWritingN0VyAD0T9AlignmentOGG_AHyAZA6_GtGA7_GASGGGMd);
    v11 = v10[13];
    v28 = v4;
    v12 = &v6[v11];
    v27 = static HorizontalAlignment.leading.getter();
    v39 = 1;
    closure #1 in closure #2 in AlertsButton.watchAlertsButtonLabel()(v2, &v33);
    v42 = v35;
    v43 = v36;
    v44[0] = v37[0];
    *(v44 + 11) = *(v37 + 11);
    v40 = v33;
    v41 = v34;
    *(v49 + 11) = *(v37 + 11);
    v47 = v35;
    v48 = v36;
    v49[0] = v37[0];
    v45 = v33;
    v46 = v34;
    v30 = a1;
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(&v40, v32, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AGyAiRGtGASGs5NeverOGMd);
    outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(&v45, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AGyAiRGtGASGs5NeverOGMd);
    *&v38[39] = v42;
    *&v38[55] = v43;
    *&v38[71] = v44[0];
    *&v38[82] = *(v44 + 11);
    *&v38[7] = v40;
    *&v38[23] = v41;
    v13 = *&v38[32];
    *(v12 + 65) = *&v38[48];
    v14 = *&v38[80];
    *(v12 + 81) = *&v38[64];
    *(v12 + 97) = v14;
    v15 = *v38;
    *(v12 + 33) = *&v38[16];
    *(v12 + 49) = v13;
    v16 = v39;
    *v12 = v27;
    *(v12 + 1) = 0;
    v12[16] = v16;
    *(v12 + 113) = *&v38[96];
    *(v12 + 17) = v15;
    *&v6[v10[14]] = 0x4022000000000000;
    *&v6[v10[15]] = v29;
    v17 = static Color.white.getter();
    KeyPath = swift_getKeyPath();
    v19 = &v6[*(v28 + 36)];
    *v19 = KeyPath;
    v19[1] = v17;
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v6, v9, &_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA012_ConditionalD0VyAHyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeM0VGGAPGs5NeverOGAA6VStackVyAHyAHyAA05TupleI0VyACyACyAA4TextVAD17HeaderHyphenationVGAA022_EnvironmentKeyWritingN0VyAA0T9AlignmentOGG_ACyAZA6_GtGA7_GASGGGA3_yAA5ColorVSgGGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA19_ConditionalContentVyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedE0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGMd);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedE0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v6, &_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA012_ConditionalD0VyAHyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeM0VGGAPGs5NeverOGAA6VStackVyAHyAHyAA05TupleI0VyACyACyAA4TextVAD17HeaderHyphenationVGAA022_EnvironmentKeyWritingN0VyAA0T9AlignmentOGG_ACyAZA6_GtGA7_GASGGGA3_yAA5ColorVSgGGMd);
  }

  else
  {
    v21 = static VerticalAlignment.center.getter();
    v39 = 1;
    closure #1 in AlertsButton.phoneAlertsButtonLabel()(v2, &v33);
    v42 = v35;
    v43 = v36;
    v44[0] = v37[0];
    *(v44 + 11) = *(v37 + 11);
    v40 = v33;
    v41 = v34;
    *(v49 + 11) = *(v37 + 11);
    v47 = v35;
    v48 = v36;
    v49[0] = v37[0];
    v45 = v33;
    v46 = v34;
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(&v40, v32, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGtGAKyAKyAG07WorkoutB017HeaderHyphenationVGAPGGs5NeverOGMd);
    outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(&v45, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGtGAKyAKyAG07WorkoutB017HeaderHyphenationVGAPGGs5NeverOGMd);
    *&v31[39] = v42;
    *&v31[55] = v43;
    *&v31[71] = v44[0];
    *&v31[82] = *(v44 + 11);
    *&v31[7] = v40;
    *&v31[23] = v41;
    v22 = *&v31[32];
    *(v9 + 65) = *&v31[48];
    v23 = *&v31[80];
    *(v9 + 81) = *&v31[64];
    *(v9 + 97) = v23;
    v24 = *v31;
    *(v9 + 33) = *&v31[16];
    *(v9 + 49) = v22;
    v25 = v39;
    *v9 = v21;
    *(v9 + 1) = 0;
    v9[16] = v25;
    *(v9 + 113) = *&v31[96];
    *(v9 + 17) = v24;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA19_ConditionalContentVyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedE0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGMd);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedE0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t closure #3 in AlertsButton.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedG0Vy07WorkoutB0018AlertConfigurationC0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytAA6ButtonVyAA07DefaultU5LabelVGGQo_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022AlertConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md);
  lazy protocol witness table accessor for type ModifiedContent<AlertConfigurationView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationView.init(content:)();
}

uint64_t closure #1 in closure #3 in AlertsButton.body.getter()
{

  AlertConfigurationView.init(viewModel:)(v0, v4);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022AlertConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA6ButtonVyAA07DefaultI5LabelVGGQo_Md);
  lazy protocol witness table accessor for type ModifiedContent<AlertConfigurationView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v2 = lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  *&v6[0] = v1;
  *(&v6[0] + 1) = v2;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  v6[2] = v4[2];
  v6[3] = v4[3];
  v6[4] = v4[4];
  v6[5] = KeyPath;
  v6[0] = v4[0];
  v6[1] = v4[1];
  return outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v6, &_s7SwiftUI15ModifiedContentVy07WorkoutB022AlertConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
}

uint64_t closure #1 in closure #1 in closure #3 in AlertsButton.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  static ToolbarItemPlacement.topBarLeading.getter();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd);
  lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd);
  ToolbarItem<>.init(placement:content:)();
  v7 = lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type ToolbarItem<(), Button<DefaultButtonLabel>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd);
  MEMORY[0x20F3098F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #3 in AlertsButton.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for AlertsButton();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = type metadata accessor for ButtonRole();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ButtonRole.confirm.getter();
  outlined init with copy of AlertsButton(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlertsButton);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  _s9WorkoutUI12AlertsButtonVWObTm_0(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for AlertsButton);
  return MEMORY[0x20F30AF90](v7, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #3 in AlertsButton.body.getter, v9);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #3 in AlertsButton.body.getter()
{
  type metadata accessor for AlertsButton();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCSgGMd);
  return State.wrappedValue.setter();
}

uint64_t closure #1 in AlertsButton.phoneAlertsButtonLabel()@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for AlertConfigurationContext();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AlertsButton();
  (*(v5 + 16))(v7, a1 + v8[7], v4);
  v9 = (*(v5 + 88))(v7, v4);
  v10 = *MEMORY[0x277D7E4B8];
  v85 = a2;
  if (v9 == v10)
  {
    (*(v5 + 96))(v7, v4);
    v83 = v7;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = WorkoutUIBundle.super.isa;
    v123._object = 0xE000000000000000;
    v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v12.value._object = 0xEB00000000656C62;
    v13._object = 0x800000020CB97CD0;
    v13._countAndFlagsBits = 0xD000000000000026;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v123._countAndFlagsBits = 0;
    v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v123);

    *v117 = v15;
    lazy protocol witness table accessor for type String and conformance String();
    v16 = Text.init<A>(_:)();
    v18 = v17;
    v20 = v19;
    static Color.primary.getter();
    v80 = Text.foregroundColor(_:)();
    v81 = v21;
    v84 = v22;
    v82 = v23;

    outlined consume of Text.Storage(v16, v18, v20 & 1);

    v24 = a1 + v8[8];
    *v117 = *v24;
    *&v117[8] = *(v24 + 8);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay11WorkoutCore10TargetZoneCGGMd);
    MEMORY[0x20F30B100](&v106, v25);
    v26 = v106;
    v27 = a1 + v8[9];
    *v117 = *v27;
    *&v117[8] = *(v27 + 8);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd);
    MEMORY[0x20F30B100](&v106, v28);
    v29 = v106;
    v30 = *(a1 + 16);
    v31 = *(a1 + 24);
    v32 = a1 + v8[10];
    *v117 = *v32;
    *&v117[8] = *(v32 + 8);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd);
    MEMORY[0x20F30B100](&v106, v33);
    v34 = v106;
    v35 = specialized static AlertsButton.singleAlertDescription(targetZones:heartRateTargetZone:activityType:formattingManager:powerZonesAlertTargetZone:)(v26, v29, v30, v31, v106);
    v37 = v36;

    *v117 = v35;
    *&v117[8] = v37;
    v38 = Text.init<A>(_:)();
    v40 = v39;
    LOBYTE(v37) = v41;
    static Color.secondary.getter();
    v42 = Text.foregroundColor(_:)();
    v76[0] = v43;
    v45 = v44;
    v47 = v46;

    outlined consume of Text.Storage(v38, v40, v37 & 1);

    KeyPath = swift_getKeyPath();
    v89 = v82 & 1;
    v88 = v82 & 1;
    v87 = 1;
    v86 = v45 & 1;
    v77 = v45 & 1;
    v49 = v80;
    *&v91 = v80;
    *(&v91 + 1) = v84;
    LOBYTE(v92) = v82 & 1;
    v50 = v82 & 1;
    *(&v92 + 1) = v81;
    *&v93 = 0;
    BYTE8(v93) = 1;
    v51 = v42;
    v52 = v76[0];
    *&v94 = v42;
    *(&v94 + 1) = v76[0];
    LOBYTE(v95[0]) = v45 & 1;
    *(&v95[0] + 1) = v47;
    *&v95[1] = KeyPath;
    v53 = v47;
    BYTE8(v95[1]) = 2;
    v96 = v91;
    v97 = v92;
    *(v100 + 9) = *(v95 + 9);
    v99 = v94;
    v100[0] = v95[0];
    v98 = v93;
    LOBYTE(v47) = v82 & 1;
    v82 &= 1u;
    outlined copy of Text.Storage(v80, v84, v50);

    v54 = v51;
    v79 = v51;
    v55 = v51;
    v56 = v52;
    outlined copy of Text.Storage(v55, v52, v45 & 1);

    v57 = v84;
    outlined copy of Text.Storage(v49, v84, v47);

    outlined copy of Text.Storage(v54, v56, v45 & 1);
    v76[1] = v53;

    v78 = KeyPath;

    outlined consume of Text.Storage(v54, v56, v45 & 1);

    outlined consume of Text.Storage(v49, v57, v89);

    v121 = 0;
    v118 = v98;
    v119 = v99;
    *v120 = v100[0];
    *&v120[9] = *(v100 + 9);
    *v117 = v96;
    *&v117[16] = v97;
    v120[25] = 0;
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(&v91, &v106, &_s7SwiftUI4TextV_AA6SpacerVAA15ModifiedContentVyAcA30_EnvironmentKeyWritingModifierVyAA0C9AlignmentOGGtMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGtGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGtGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v108 = v114;
    v109 = v115;
    *v110 = v116[0];
    *&v110[10] = *(v116 + 10);
    v106 = v112;
    v107 = v113;
    v122 = 0;
    v111 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGtGAKyAKyAG07WorkoutB017HeaderHyphenationVGAPGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(&v91, &_s7SwiftUI4TextV_AA6SpacerVAA15ModifiedContentVyAcA30_EnvironmentKeyWritingModifierVyAA0C9AlignmentOGGtMd);
    outlined consume of Text.Storage(v79, v56, v77);

    outlined consume of Text.Storage(v49, v84, v82);

    v103 = v118;
    v104 = v119;
    v105[0] = *v120;
    *(v105 + 11) = *&v120[11];
    v101 = *v117;
    v102 = *&v117[16];
    v58 = type metadata accessor for ConfigurationType();
    result = (*(*(v58 - 8) + 8))(v83, v58);
LABEL_9:
    v73 = v104;
    v74 = v85;
    v85[2] = v103;
    v74[3] = v73;
    v74[4] = v105[0];
    *(v74 + 75) = *(v105 + 11);
    v75 = v102;
    *v74 = v101;
    v74[1] = v75;
    return result;
  }

  if (v9 == *MEMORY[0x277D7E4C0])
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v60 = WorkoutUIBundle.super.isa;
    v124._object = 0xE000000000000000;
    v61.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v61.value._object = 0xEB00000000656C62;
    v62._countAndFlagsBits = 0xD000000000000029;
    v62._object = 0x800000020CB94110;
    v63._countAndFlagsBits = 0;
    v63._object = 0xE000000000000000;
    v124._countAndFlagsBits = 0;
    v64 = NSLocalizedString(_:tableName:bundle:value:comment:)(v62, v61, v60, v63, v124);

    *v117 = v64;
    lazy protocol witness table accessor for type String and conformance String();
    v65 = Text.init<A>(_:)();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v72 = swift_getKeyPath();
    v122 = v69 & 1;
    v121 = 1;
    *v117 = v65;
    *&v117[8] = v67;
    v117[16] = v69 & 1;
    *&v117[24] = v71;
    *&v118 = v72;
    BYTE8(v118) = 0;
    v120[25] = 1;
    outlined copy of Text.Storage(v65, v67, v69 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGtGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGtGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v108 = v114;
    v109 = v115;
    *v110 = v116[0];
    *&v110[10] = *(v116 + 10);
    v106 = v112;
    v107 = v113;
    v90 = 0;
    v111 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGtGAKyAKyAG07WorkoutB017HeaderHyphenationVGAPGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined consume of Text.Storage(v65, v67, v69 & 1);

    v103 = v118;
    v104 = v119;
    v105[0] = *v120;
    *(v105 + 11) = *&v120[11];
    v101 = *v117;
    v102 = *&v117[16];
    goto LABEL_9;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in AlertsButton.watchAlertsButtonLabel()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeI0VGGAOGs5NeverO_GMd);
  MEMORY[0x28223BE20](v25);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeI0VGGAO_GMd);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeH0VGGAMGMd);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMd);
  MEMORY[0x28223BE20](v10);
  v12 = (&v23 - v11);
  v13 = type metadata accessor for AlertConfigurationContext();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AlertsButton();
  (*(v14 + 16))(v16, a1 + *(v17 + 28), v13);
  v18 = (*(v14 + 88))(v16, v13);
  if (v18 == *MEMORY[0x277D7E4B8])
  {
    (*(v14 + 96))(v16, v13);
    v19 = Image.init(_internalSystemName:)();
    TintShapeStyle.init()();
    *v12 = v19;
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v12, v7, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v9, v4, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeH0VGGAMGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v9, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeH0VGGAMGMd);
    outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v12, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMd);
    v20 = type metadata accessor for ConfigurationType();
    return (*(*(v20 - 8) + 8))(v16, v20);
  }

  else if (v18 == *MEMORY[0x277D7E4C0])
  {
    v22 = Image.init(systemName:)();
    TintShapeStyle.init()();
    *v12 = v22;
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v12, v7, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v9, v4, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeH0VGGAMGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v9, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeH0VGGAMGMd);
    return outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(v12, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMd);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #2 in AlertsButton.watchAlertsButtonLabel()@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for AlertConfigurationContext();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AlertsButton();
  (*(v5 + 16))(v7, a1 + v8[7], v4);
  v9 = (*(v5 + 88))(v7, v4);
  v10 = *MEMORY[0x277D7E4B8];
  v84 = a2;
  if (v9 == v10)
  {
    (*(v5 + 96))(v7, v4);
    v77 = v7;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = WorkoutUIBundle.super.isa;
    v121._object = 0xE000000000000000;
    v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v12.value._object = 0xEB00000000656C62;
    v13._object = 0x800000020CB97CD0;
    v13._countAndFlagsBits = 0xD000000000000026;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v121._countAndFlagsBits = 0;
    v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v121);

    *v115 = v15;
    lazy protocol witness table accessor for type String and conformance String();
    v16 = Text.init<A>(_:)();
    v81 = v17;
    v82 = v16;
    v75 = v18;
    v83 = v19;
    KeyPath = swift_getKeyPath();
    v20 = a1 + v8[8];
    *v115 = *v20;
    *&v115[8] = *(v20 + 8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay11WorkoutCore10TargetZoneCGGMd);
    MEMORY[0x20F30B100](&v104, v21);
    v22 = v104;
    v23 = a1 + v8[9];
    *v115 = *v23;
    *&v115[8] = *(v23 + 8);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd);
    MEMORY[0x20F30B100](&v104, v24);
    v25 = v104;
    v27 = *(a1 + 16);
    v26 = *(a1 + 24);
    v28 = a1 + v8[10];
    *v115 = *v28;
    *&v115[8] = *(v28 + 8);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd);
    MEMORY[0x20F30B100](&v104, v29);
    v30 = v104;
    v31 = specialized static AlertsButton.singleAlertDescription(targetZones:heartRateTargetZone:activityType:formattingManager:powerZonesAlertTargetZone:)(v22, v25, v27, v26, v104);
    v33 = v32;

    *v115 = v31;
    *&v115[8] = v33;
    v34 = Text.init<A>(_:)();
    v36 = v35;
    LOBYTE(v33) = v37;
    static Font.footnote.getter();
    v38 = Text.font(_:)();
    v40 = v39;
    v42 = v41;

    outlined consume of Text.Storage(v34, v36, v33 & 1);

    static Color.secondary.getter();
    v79 = Text.foregroundColor(_:)();
    v44 = v43;
    LOBYTE(v22) = v45;
    v47 = v46;

    outlined consume of Text.Storage(v38, v40, v42 & 1);

    v78 = swift_getKeyPath();
    v87 = v75 & 1;
    v86 = v75 & 1;
    LOBYTE(v36) = v22 & 1;
    v85 = v22 & 1;
    v48 = v82;
    *&v89 = v82;
    *(&v89 + 1) = v81;
    LOBYTE(v90) = v75 & 1;
    v49 = v75 & 1;
    *(&v90 + 1) = v83;
    *&v91 = KeyPath;
    BYTE8(v91) = 0;
    v50 = v79;
    *&v92 = v79;
    *(&v92 + 1) = v44;
    v80 = v44;
    LOBYTE(v93[0]) = v36;
    *(&v93[0] + 1) = v47;
    *&v93[1] = v78;
    v51 = v47;
    BYTE8(v93[1]) = 0;
    v94 = v89;
    v95 = v90;
    *(v98 + 9) = *(v93 + 9);
    v97 = v92;
    v98[0] = v93[0];
    v96 = v91;
    LOBYTE(v47) = v75 & 1;
    v75 &= 1u;
    outlined copy of Text.Storage(v82, v81, v49);

    LOBYTE(v33) = v36;
    outlined copy of Text.Storage(v50, v44, v36);

    v52 = v48;
    v53 = v81;
    outlined copy of Text.Storage(v52, v81, v47);

    v54 = v80;
    outlined copy of Text.Storage(v50, v80, v33);
    v74[1] = v51;

    outlined consume of Text.Storage(v50, v54, v33);

    v55 = v82;
    outlined consume of Text.Storage(v82, v53, v87);

    v119 = 0;
    v116 = v96;
    v117 = v97;
    *v118 = v98[0];
    *&v118[9] = *(v98 + 9);
    *v115 = v94;
    *&v115[16] = v95;
    v118[25] = 0;
    outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(&v89, &v104, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG_ACyAeNGtMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AEyAgPGtGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AEyAgPGtGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v106 = v112;
    v107 = v113;
    *v108 = v114[0];
    *&v108[10] = *(v114 + 10);
    v104 = v110;
    v105 = v111;
    v120 = 0;
    v109 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AGyAiRGtGASGMd);
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(&v89, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG_ACyAeNGtMd);
    outlined consume of Text.Storage(v79, v80, v33);

    outlined consume of Text.Storage(v55, v53, v75);

    v101 = v116;
    v102 = v117;
    v103[0] = *v118;
    *(v103 + 11) = *&v118[11];
    v99 = *v115;
    v100 = *&v115[16];
    v56 = type metadata accessor for ConfigurationType();
    result = (*(*(v56 - 8) + 8))(v77, v56);
LABEL_9:
    v71 = v102;
    v72 = v84;
    v84[2] = v101;
    v72[3] = v71;
    v72[4] = v103[0];
    *(v72 + 75) = *(v103 + 11);
    v73 = v100;
    *v72 = v99;
    v72[1] = v73;
    return result;
  }

  if (v9 == *MEMORY[0x277D7E4C0])
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v58 = WorkoutUIBundle.super.isa;
    v122._object = 0xE000000000000000;
    v59.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v59.value._object = 0xEB00000000656C62;
    v60._countAndFlagsBits = 0xD000000000000029;
    v60._object = 0x800000020CB94110;
    v61._countAndFlagsBits = 0;
    v61._object = 0xE000000000000000;
    v122._countAndFlagsBits = 0;
    v62 = NSLocalizedString(_:tableName:bundle:value:comment:)(v60, v59, v58, v61, v122);

    *v115 = v62;
    lazy protocol witness table accessor for type String and conformance String();
    v63 = Text.init<A>(_:)();
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v70 = swift_getKeyPath();
    v120 = v67 & 1;
    v119 = 1;
    *v115 = v63;
    *&v115[8] = v65;
    v115[16] = v67 & 1;
    *&v115[24] = v69;
    *&v116 = v70;
    BYTE8(v116) = 0;
    v118[25] = 1;
    outlined copy of Text.Storage(v63, v65, v67 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AEyAgPGtGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AEyAgPGtGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v106 = v112;
    v107 = v113;
    *v108 = v114[0];
    *&v108[10] = *(v114 + 10);
    v104 = v110;
    v105 = v111;
    v88 = 0;
    v109 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AGyAiRGtGASGMd);
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined consume of Text.Storage(v63, v65, v67 & 1);

    v101 = v116;
    v102 = v117;
    v103[0] = *v118;
    *(v103 + 11) = *&v118[11];
    v99 = *v115;
    v100 = *&v115[16];
    goto LABEL_9;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in AlertsButton.body.getter()
{
  type metadata accessor for AlertsButton();

  return closure #1 in AlertsButton.body.getter();
}

uint64_t partial apply for closure #3 in AlertsButton.body.getter()
{
  type metadata accessor for AlertsButton();

  return closure #3 in AlertsButton.body.getter();
}

unint64_t lazy protocol witness table accessor for type AlertConfigurationView and conformance AlertConfigurationView()
{
  result = lazy protocol witness table cache variable for type AlertConfigurationView and conformance AlertConfigurationView;
  if (!lazy protocol witness table cache variable for type AlertConfigurationView and conformance AlertConfigurationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlertConfigurationView and conformance AlertConfigurationView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA6HStackVyACyACyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGAMyAU023AlignedLeadingAccessorydG0VyACyACyAMyAA5ImageVAA016_ForegroundStyleN0VyAA09TintShapeY0VGGA12_GA0_GAA6VStackVyACyACyAGyAY_AStGAYGA0_GGGAOyAA5ColorVSgGGGMd);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedE0VyAiA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGtGAMyAMyAI07WorkoutB017HeaderHyphenationVGARGGs5NeverOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA012_ConditionalD0VyAHyACyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeM0VGGAPGs5NeverOGAA6VStackVyAHyAHyAA05TupleI0VyACyACyAA4TextVAD17HeaderHyphenationVGAA022_EnvironmentKeyWritingN0VyAA0T9AlignmentOGG_ACyAZA6_GtGA7_GASGGGA3_yAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>> and conformance AlignedLeadingAccessoryContentView<A, B>, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB0012_ConditionalF0VyAFyAD08ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeM0VGGAPGs5NeverOGAD6VStackVyAFyAFyAD05TupleG0VyAHyAHyAD4TextVAA17HeaderHyphenationVGAD022_EnvironmentKeyWritingN0VyAD0T9AlignmentOGG_AHyAZA6_GtGA7_GASGGGMd);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, HeaderHyphenation> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedD0VyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGtGAKyAKyAG07WorkoutB017HeaderHyphenationVGAPGGMd);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGtGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t specialized static AlertsButton.singleAlertDescription(targetZones:heartRateTargetZone:activityType:formattingManager:powerZonesAlertTargetZone:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = a3;
  v9 = type metadata accessor for PowerZonesAlertZoneType();
  v83 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v77 - v13;
  MEMORY[0x28223BE20](v15);
  v81 = &v77 - v16;
  v17 = type metadata accessor for HeartRateZoneType();
  v89 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v88 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v77 - v20;
  v22 = type metadata accessor for TargetZone.ZoneType();
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v25.n128_f64[0] = MEMORY[0x28223BE20](v24);
  v79 = v11;
  v80 = &v77 - v26;
  v90 = a2;
  v91 = a4;
  v85 = a5;
  v86 = v27;
  v87 = v28;
  v84 = v9;
  v77 = v29;
  v78 = v30;
  v82 = v14;
  if (a1 >> 62)
  {
LABEL_15:
    v31 = __CocoaSet.count.getter();
    if (v31)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
LABEL_3:
      v32 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x20F30C990](v32, a1, v25);
          v33 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
            v34 = swift_allocObject();
            *(v34 + 16) = xmmword_20CB5DA80;
            v35 = v80;
            TargetZone.type.getter();
            v36 = TargetZone.ZoneType.displayString(activityType:)();
            v38 = v37;
            (*(v86 + 8))(v35, v87);
            *(v34 + 32) = v36;
            *(v34 + 40) = v38;
            *(v34 + 48) = TargetZone.displayString(formattingManager:activityType:)();
            *(v34 + 56) = v39;
            v93 = v34;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
            lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
            countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();

            return countAndFlagsBits;
          }
        }

        else
        {
          if (v32 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v33 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_12;
          }
        }

        if (dispatch thunk of TargetZone.enabled.getter())
        {
          goto LABEL_13;
        }

        ++v32;
      }

      while (v33 != v31);
    }
  }

  HeartRateTargetZone.type.getter();
  v42 = v88;
  v41 = v89;
  (*(v89 + 104))(v88, *MEMORY[0x277D7E138], v17);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType, MEMORY[0x277D7E150]);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v41 + 8);
  v44(v42, v17);
  v44(v21, v17);
  if ((v43 & 1) == 0)
  {
    return MEMORY[0x20F305B10](v91, v92);
  }

  v45 = v81;
  dispatch thunk of PowerZonesAlertTargetZone.type.getter();
  v46 = *MEMORY[0x277D7E418];
  v47 = v82;
  v48 = v83;
  v49 = v84;
  (*(v83 + 104))(v82, *MEMORY[0x277D7E418], v84);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438]);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v48 + 8);
  v51(v47, v49);
  v51(v45, v49);
  if (v50)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v52 = WorkoutUIBundle.super.isa;
    v95._object = 0xE000000000000000;
    v53.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v53.value._object = 0xEB00000000656C62;
    v54._object = 0x800000020CB97DC0;
    v54._countAndFlagsBits = 0xD000000000000016;
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    v95._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v54, v53, v52, v55, v95)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v57 = v79;
  dispatch thunk of PowerZonesAlertTargetZone.type.getter();
  v58 = (*(v48 + 88))(v57, v49);
  if (v58 == *MEMORY[0x277D7E428])
  {
    (*(v48 + 96))(v57, v49);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd);
    v61 = v86;
    v60 = v87;
    v62 = v78;
    (*(v86 + 32))(v78, &v57[*(v59 + 48)], v87);
LABEL_24:
    v63 = TargetZone.ZoneType.displayString(activityType:)();
    v65 = v64;
    v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v68 = *(v66 + 2);
    v67 = *(v66 + 3);
    if (v68 >= v67 >> 1)
    {
      v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v66);
    }

    (*(v61 + 8))(v62, v60);
    *(v66 + 2) = v68 + 1;
    v69 = &v66[16 * v68];
    *(v69 + 4) = v63;
    *(v69 + 5) = v65;
    goto LABEL_33;
  }

  v61 = v86;
  v60 = v87;
  if (v58 == *MEMORY[0x277D7E430])
  {
    v51(v57, v49);
    goto LABEL_32;
  }

  if (v58 == *MEMORY[0x277D7E420])
  {
    (*(v48 + 96))(v57, v49);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd);
    v62 = v77;
    (*(v61 + 32))(v77, &v57[*(v70 + 48)], v60);
    goto LABEL_24;
  }

  if (v58 == v46)
  {
LABEL_32:
    v66 = MEMORY[0x277D84F90];
LABEL_33:
    v71 = PowerZonesAlertTargetZone.displayString(formattingManager:activityType:)();
    v73 = v72;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v66 + 2) + 1, 1, v66);
    }

    v75 = *(v66 + 2);
    v74 = *(v66 + 3);
    if (v75 >= v74 >> 1)
    {
      v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v66);
    }

    *(v66 + 2) = v75 + 1;
    v76 = &v66[16 * v75];
    *(v76 + 4) = v71;
    *(v76 + 5) = v73;
    v93 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
    countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();

    return countAndFlagsBits;
  }

  v93 = 0;
  v94 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  MEMORY[0x20F30BC00](0xD000000000000034, 0x800000020CB97D00);
  MEMORY[0x20F30BC00](0xD000000000000071, 0x800000020CB97D40);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_6(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AGyAiRGtGASGMd);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextV07WorkoutB017HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AEyAgPGtGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeG0VGGMd);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<TintShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA09TintShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA24_ForegroundStyleModifierVyAA09TintShapeH0VGGAMGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AlertConfigurationView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AlertConfigurationView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AlertConfigurationView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022AlertConfigurationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type AlertConfigurationView and conformance AlertConfigurationView();
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AlertConfigurationView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(unint64_t *a1, uint64_t *a2)
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

uint64_t objectdestroy_3Tm()
{
  v1 = (type metadata accessor for AlertsButton() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  v4 = type metadata accessor for AlertConfigurationContext();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v2 + v1[11];

  v6 = v2 + v1[12];

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #3 in AlertsButton.body.getter()
{
  type metadata accessor for AlertsButton();

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #3 in AlertsButton.body.getter();
}

uint64_t outlined init with copy of AlertsButton(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AlertConfigurationViewModel.ViewModelContainer(uint64_t a1)
{
  v2 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s9WorkoutUI12AlertsButtonVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.sheet<A, B>(item:onDismiss:content:)>>.0, NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _Envir()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.sheet<A, B>(item:onDismiss:content:)>>.0, NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, ;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.sheet<A, B>(item:onDismiss:content:)>>.0, NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, )
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE5sheet4item9onDismiss7contentQrAA7BindingVyqd__SgG_yycSgqd_0_qd__cts12IdentifiableRd__AaDRd_0_r0_lFQOyAA6ButtonVyAA14NavigationLinkVyACyAA6HStackVyACyACyAA05TupleE0VyAA4TextV_AA6SpacerVAA08ModifiedD0VyAyA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGtGA1_yA1_yAY07WorkoutB017HeaderHyphenationVGA6_GGs5NeverOGGA1_yA9_023AlignedLeadingAccessorydE0VyACyACyA1_yAA5ImageVAA016_ForegroundStyleX0VyAA14TintShapeStyleVGGA28_GA16_GAA6VStackVyACyACyAWyA13__A7_tGA13_GA16_GGGA3_yAA5ColorVSgGGGAA05EmptyE0VGG_A9_018AlertConfigurationE5ModelCAA0nE0VyAeAE7toolbarAIQrqd__yXE_tAA07ToolbarD0Rd__lFQOyA1_yA9_018AlertConfigurationE0VA41_G_AA07ToolbarD7BuilderV10buildBlockyQrxAAA53_RzlFZQOy_AA11ToolbarItemVyytAQyAA07DefaultM5LabelVGGQo_Qo_GQo_ASyA43_AeAE15navigationTitleyQrqd__SyRd__lFQOyA55__SSQo_GGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAGyAGyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedG0VyAmA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGtGAQyAQyAM07WorkoutB017HeaderHyphenationVGAVGGs5NeverOGGAQyAY023AlignedLeadingAccessorygJ0VyAGyAGyAQyAA5ImageVAA016_ForegroundStyleQ0VyAA14TintShapeStyleVGGA16_GA4_GAA6VStackVyAGyAGyAKyA1__AWtGA1_GA4_GGGASyAA5ColorVSgGGGAA05EmptyJ0VGGMd);
    type metadata accessor for AlertConfigurationViewModel(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedH0Vy07WorkoutB0018AlertConfigurationD0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA6ButtonVyAA07DefaultV5LabelVGGQo_Qo_GMd);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type Button<NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAGyAGyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedG0VyAmA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGtGAQyAQyAM07WorkoutB017HeaderHyphenationVGAVGGs5NeverOGGAQyAY023AlignedLeadingAccessorygJ0VyAGyAGyAQyAA5ImageVAA016_ForegroundStyleQ0VyAA14TintShapeStyleVGGA16_GA4_GAA6VStackVyAGyAGyAKyA1__AWtGA1_GA4_GGGASyAA5ColorVSgGGGAA05EmptyJ0VGGMd);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_6(&lazy protocol witness table cache variable for type AlertConfigurationViewModel and conformance AlertConfigurationViewModel, type metadata accessor for AlertConfigurationViewModel);
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationView<<<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA0D0PAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAA08ModifiedH0Vy07WorkoutB0018AlertConfigurationD0VAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA0gH7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0G4ItemVyytAA6ButtonVyAA07DefaultV5LabelVGGQo_Qo_GMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, EmptyView> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>, _EnvironmentKeyWritingModifier<Color?>>>, <<opaque return type of View.navigationTitle<A>(_, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVyAA6HStackVyAEyAEyAA9TupleViewVyAA4TextV_AA6SpacerVAA08ModifiedF0VyAkA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGtGAOyAOyAK07WorkoutB017HeaderHyphenationVGATGGs5NeverOGGAOyAW023AlignedLeadingAccessoryfI0VyAEyAEyAOyAA5ImageVAA016_ForegroundStyleP0VyAA14TintShapeStyleVGGA14_GA2_GAA6VStackVyAEyAEyAIyA__AUtGA_GA2_GGGAQyAA5ColorVSgGGGAA0I0PAAE15navigationTitleyQrqd__SyRd__lFQOyAW018AlertConfigurationI0V_SSQo_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.sheet<A, B>(item:onDismiss:content:)>>.0, NavigationLink<_ConditionalContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(Text, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>, ModifiedContent<AlignedLeadingAccessoryContentView<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>>, Never>, VStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>, ModifiedContent<ModifiedContent<Text, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>>, Never>>>,);
  }

  return result;
}

uint64_t type metadata accessor for MirrorSpeedometerPlatterView()
{
  result = type metadata singleton initialization cache for MirrorSpeedometerPlatterView;
  if (!type metadata singleton initialization cache for MirrorSpeedometerPlatterView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MirrorSpeedometerPlatterView()
{
  type metadata accessor for ObservedObject<MetricsPublisher>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservedObject<WorkoutStatePublisher>();
    if (v1 <= 0x3F)
    {
      _sSo21FIUIFormattingManagerCMaTm_0(319, &lazy cache variable for type metadata for FIUIFormattingManager);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MetricPlatterType();
        if (v3 <= 0x3F)
        {
          _sSo21FIUIFormattingManagerCMaTm_0(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for ObservedObject<MetricsPublisher>()
{
  if (!lazy cache variable for type metadata for ObservedObject<MetricsPublisher>)
  {
    type metadata accessor for MetricsPublisher();
    _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, MEMORY[0x277D7E090]);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<MetricsPublisher>);
    }
  }
}

void type metadata accessor for ObservedObject<WorkoutStatePublisher>()
{
  if (!lazy cache variable for type metadata for ObservedObject<WorkoutStatePublisher>)
  {
    type metadata accessor for WorkoutStatePublisher();
    _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88]);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<WorkoutStatePublisher>);
    }
  }
}

BOOL MirrorSpeedometerPlatterView.speedUnavailable()()
{
  type metadata accessor for MirrorSpeedometerPlatterView();
  v0 = FIUIDistanceTypeForActivityType();
  if (MEMORY[0x20F30D340](v0) == 4)
  {
    MetricsPublisher.currentPace.getter();
    if (v1 >= 0.0)
    {
      _sSo21FIUIFormattingManagerCMaTm_0(0, &lazy cache variable for type metadata for NSObject);
      _sSo21FIUIFormattingManagerCMaTm_0(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
      v2 = static FIUIWorkoutActivityType.indoorCycle.getter();
      v3 = static NSObject.== infix(_:_:)();

      if (v3)
      {
        return 0;
      }
    }
  }

  v4 = FIUIDistanceTypeForActivityType();
  if (MEMORY[0x20F30D340](v4) != 4)
  {
    return 0;
  }

  if (WorkoutStatePublisher.gpsUnavailable.getter())
  {
    return 1;
  }

  MetricsPublisher.currentPace.getter();
  return v6 < 0.0;
}

void MirrorSpeedometerPlatterView.value.getter()
{
  if (MirrorSpeedometerPlatterView.speedUnavailable()())
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = WorkoutUIBundle.super.isa;
    v11._object = 0xE000000000000000;
    v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v2.value._object = 0xEB00000000656C62;
    v3._object = 0x800000020CB97E50;
    v3._countAndFlagsBits = 0xD00000000000001ALL;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v11);
    goto LABEL_7;
  }

  v5 = *(v0 + 32);
  v6 = [objc_opt_self() meterUnit];
  MetricsPublisher.currentPace.getter();
  v8 = [objc_opt_self() quantityWithUnit:v6 doubleValue:v7];

  type metadata accessor for MirrorSpeedometerPlatterView();
  v9 = FIUIDistanceTypeForActivityType();
  v10 = MEMORY[0x20F30D340](v9);
  v1 = [v5 localizedPaceStringWithDistance:v8 overDuration:v10 paceFormat:FIUIDistanceTypeForActivityType() distanceType:1.0];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_7:

    return;
  }

  __break(1u);
}

uint64_t closure #1 in MirrorSpeedometerPlatterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGG_GMd);
  MEMORY[0x28223BE20](v144);
  v143 = v129 - v3;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VG_GMd);
  MEMORY[0x28223BE20](v141);
  v139 = v129 - v4;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB019HeartRateMetricViewVAF0gh9AggregateiJ0V_GMd);
  MEMORY[0x28223BE20](v135);
  v134 = v129 - v5;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
  MEMORY[0x28223BE20](v140);
  v136 = v129 - v6;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
  MEMORY[0x28223BE20](v142);
  v137 = v129 - v7;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
  MEMORY[0x28223BE20](v190);
  v138 = v129 - v8;
  v133 = type metadata accessor for HeartRateMetricView();
  MEMORY[0x28223BE20](v133);
  v149 = v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA33_AYGACyAF012StrideLengthhI0VA58_GGACyACyAF019VerticalOscillationhI0VA62_GACyAF013GroundContactnhI0VA65_GGGACyACyA17_AF016DownhillRunCounthI0VGACyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGG_GMd);
  MEMORY[0x28223BE20](v191);
  v189 = v129 - v10;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGG_GMd);
  MEMORY[0x28223BE20](v178);
  v185 = v129 - v11;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGG_GMd);
  MEMORY[0x28223BE20](v192);
  v182 = (v129 - v12);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  MEMORY[0x28223BE20](v176);
  v183 = v129 - v13;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  MEMORY[0x28223BE20](v177);
  v184 = v129 - v14;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd);
  MEMORY[0x28223BE20](v186);
  v148 = v129 - v15;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA012_ConditionalK0VyAKyAKyAKyAKyAKy07WorkoutB0012EnergyMetricC0VANGAKyAL09HeartRateoC0VAL0pq9AggregateoC0VGGAKyAKyAsL04ZoneoC0VGAKyAL06TimeInsoC0VAWGGGAKyAKyAKyAzL04PaceoC0VGAKyA3_A3_GGAKyA5_AKyAL08DistanceoC0VAL04LapsoC0VGGGGAKyAKyAKyAKyAKyAKyAL07CadenceoC0VAA05EmptyC0VGA16_GA16_GAKyAL015ElevationChangeoC0VAL016CurrentElevationoC0VGGAKyAKyAL05PoweroC0VA29_GAKyA29_AL014FlightsClimbedoC0VGGGAKyAKyAKyAL015SegmentDurationoC0VAL0w6DetailoC0VGAKyA3_ANGGAKyAKyANA29_GAKyA29_AIyAIyAL0mtC0VAL0O6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAKyAKyAKyAKyA39_A3_GAKyAL012StrideLengthoC0VA62_GGAKyAKyAL019VerticalOscillationoC0VA66_GAKyAL013GroundContacttoC0VA69_GGGAKyAKyA23_AL016DownhillRunCountoC0VGAKyA18_AA6HStackVyAA05TupleC0VyAIyAA4TextVAL0O9ValueFontVG_AIyAIyA81_AL0O19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAL0mC5StyleOGG_Qo_Md);
  v164 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v163 = v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v162 = v129 - v18;
  MEMORY[0x28223BE20](v19);
  v145 = v129 - v20;
  MEMORY[0x28223BE20](v21);
  v161 = v129 - v22;
  MEMORY[0x28223BE20](v23);
  v159 = v129 - v24;
  MEMORY[0x28223BE20](v25);
  v179 = v129 - v26;
  MEMORY[0x28223BE20](v27);
  v181 = v129 - v28;
  MEMORY[0x28223BE20](v29);
  v180 = v129 - v30;
  v187 = type metadata accessor for AccessibilityChildBehavior();
  v193 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v32 = v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Color.RGBColorSpace();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = v129 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACy07WorkoutB009MirrorArcG0VAA31AccessibilityAttachmentModifierVG_ACyAH10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingM0VyAH0hG5StyleOGGAA011_ForegrounduM0VyAA5ColorVGGMd);
  MEMORY[0x28223BE20](v37);
  v39 = (v129 - v38);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAA6ZStackVyAA05TupleC0VyAIy07WorkoutB009MirrorArcC0VAA0G18AttachmentModifierVG_AIyAN10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingR0VyAN0nC5StyleOGGAA011_ForegroundzR0VyAA5ColorVGG_Qo_Md);
  v160 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v156 = v129 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v157 = v129 - v42;
  *v39 = static Alignment.center.getter();
  v39[1] = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVy07WorkoutB009MirrorArcD0VAA31AccessibilityAttachmentModifierVG_AKyAL10MetricTextVAA06_FrameG0VGtGGMd);
  closure #1 in closure #1 in MirrorSpeedometerPlatterView.body.getter(a1, v39 + *(v44 + 44));
  KeyPath = swift_getKeyPath();
  v46 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACy07WorkoutB009MirrorArcG0VAA31AccessibilityAttachmentModifierVG_ACyAH10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingM0VyAH0hG5StyleOGGMd) + 36);
  *v46 = KeyPath;
  v46[8] = 4;
  (*(v34 + 104))(v36, *MEMORY[0x277CE0EE0], v33);
  *(v39 + *(v37 + 36)) = Color.init(_:red:green:blue:opacity:)();
  v165 = v32;
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityElement(children:)();
  v47 = *(v193 + 8);
  v193 += 8;
  v188 = v47;
  v48 = v187;
  v47(v32, v187);
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v39, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACy07WorkoutB009MirrorArcG0VAA31AccessibilityAttachmentModifierVG_ACyAH10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingM0VyAH0hG5StyleOGGAA011_ForegrounduM0VyAA5ColorVGGMd);
  v49 = *(a1 + 32);
  v50 = *(a1 + *(type metadata accessor for MirrorSpeedometerPlatterView() + 32));
  v51 = *(a1 + 8);
  MetricsPublisher.averagePace.getter();
  v53 = v52;
  v54 = v51;
  MetricsPublisher.workoutStatePublisher.getter();
  LOBYTE(v36) = WorkoutStatePublisher.gpsUnavailable.getter();

  v55 = swift_getKeyPath();
  *&v207 = v49;
  *(&v207 + 1) = 8;
  *&v208 = v50;
  *(&v208 + 1) = v55;
  LOBYTE(v209) = 0;
  *(&v209 + 1) = v53;
  LOBYTE(v210) = v36 & 1;
  v212 = 0;
  v211 = 0;
  v205 = v209;
  v206[0] = v210;
  *&v206[1] = 0;
  v203 = v207;
  v204 = v208;
  v213 = 0;
  BYTE8(v206[1]) = 0;
  v131 = v49;
  v130 = v50;
  outlined init with copy of PaceMetricView(&v207, &v194);
  v132 = lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
  _ConditionalContent<>.init(storage:)();
  v205 = v196;
  v206[0] = *v197;
  *(v206 + 9) = *&v197[9];
  v203 = v194;
  v204 = v195;
  v214 = 1;
  BYTE9(v206[1]) = 1;
  v129[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGMd);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd);
  v129[2] = lazy protocol witness table accessor for type _ConditionalContent<TimeInZoneMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>();
  v154 = lazy protocol witness table accessor for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR, lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView);
  _ConditionalContent<>.init(storage:)();
  v196 = v201;
  *v197 = v202[0];
  *&v197[10] = *(v202 + 10);
  v194 = v199;
  v195 = v200;
  v215 = 0;
  v198 = 0;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGMd);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAFGACyAD08DistancegH0VAD04LapsgH0VGGMd);
  v151 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>> and conformance <> _ConditionalContent<A, B>();
  v150 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v56 = v206[0];
  v57 = v182;
  v182[2] = v205;
  v57[3] = v56;
  *(v57 + 59) = *(v206 + 11);
  v58 = v204;
  *v57 = v203;
  v57[1] = v58;
  swift_storeEnumTagMultiPayload();
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd);
  v174 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
  v173 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
  v59 = v183;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v59, v185, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  swift_storeEnumTagMultiPayload();
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd);
  v171 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
  v170 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
  v60 = v184;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v59, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v60, v189, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  swift_storeEnumTagMultiPayload();
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd);
  v168 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
  v167 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
  v61 = v148;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of PaceMetricView(&v207);
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v60, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  v62 = swift_getKeyPath();
  v63 = v61 + *(v186 + 36);
  *v63 = v62;
  *(v63 + 8) = 5;
  v64 = v165;
  static AccessibilityChildBehavior.combine.getter();
  v166 = lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_Conditio();
  View.accessibilityElement(children:)();
  v188(v64, v48);
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v61, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd);
  MetricsPublisher.heartRateMetricsPublisher.getter();
  v65 = HeartRateMetricsPublisher.currentHeartRate.getter();
  LOBYTE(v33) = v66;

  MetricsPublisher.heartRateMetricsPublisher.getter();
  v67 = v133;
  v68 = v149;
  HeartRateMetricsPublisher.currentHeartRateValueType.getter();

  MetricsPublisher.heartRateMetricsPublisher.getter();
  LOBYTE(v48) = HeartRateMetricsPublisher.isStaleHeartRate.getter();

  MetricsPublisher.workoutStatePublisher.getter();
  LOBYTE(v61) = WorkoutStatePublisher.workoutPaused.getter();

  MetricsPublisher.workoutStatePublisher.getter();
  LOBYTE(v64) = WorkoutStatePublisher.lowPowerModeAnimationSuspended.getter();

  v69 = &v68[v67[9]];
  *v69 = swift_getKeyPath();
  v69[8] = 0;
  v70 = &v68[v67[10]];
  *v70 = swift_getKeyPath();
  v70[8] = 0;
  v71 = &v68[v67[11]];
  *v71 = swift_getKeyPath();
  v71[8] = 0;
  *&v68[v67[12]] = 0x3FD6666666666666;
  v72 = &v68[v67[13]];
  *v72 = 0;
  *(v72 + 1) = 0;
  *v68 = v65;
  v68[8] = v33 & 1;
  v68[v67[6]] = v48 & 1;
  v68[v67[7]] = v61 & 1;
  v68[v67[8]] = v64 & 1;
  outlined init with copy of HeartRateMetricView(v68, v134);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for HeartRateAggregateMetricView();
  _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type HeartRateMetricView and conformance HeartRateMetricView, type metadata accessor for HeartRateMetricView);
  _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type HeartRateAggregateMetricView and conformance HeartRateAggregateMetricView, type metadata accessor for HeartRateAggregateMetricView);
  v73 = v136;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v73, v139, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd);
  lazy protocol witness table accessor for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMR, lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView);
  lazy protocol witness table accessor for type _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView> and conformance <> _ConditionalContent<A, B>();
  v74 = v137;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v73, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd);
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v74, v143, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGACyAD06TimeInkiJ0VAHGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>> and conformance <> _ConditionalContent<A, B>();
  v75 = v138;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v74, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd);
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v75, v182, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
  swift_storeEnumTagMultiPayload();
  v76 = v183;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v75, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd);
  v77 = v76;
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v76, v185, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  swift_storeEnumTagMultiPayload();
  v78 = v184;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v77, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v78, v189, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  swift_storeEnumTagMultiPayload();
  v79 = v148;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v78, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  outlined destroy of HeartRateMetricView(v149);
  v80 = swift_getKeyPath();
  v81 = v79 + *(v186 + 36);
  *v81 = v80;
  *(v81 + 8) = 5;
  v82 = v165;
  static AccessibilityChildBehavior.combine.getter();
  View.accessibilityElement(children:)();
  v188(v82, v187);
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v79, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd);
  v129[1] = v54;
  MetricsPublisher.fastestPace.getter();
  v84 = v83;
  MetricsPublisher.workoutStatePublisher.getter();
  LOBYTE(v82) = WorkoutStatePublisher.gpsUnavailable.getter();

  v85 = swift_getKeyPath();
  v86 = v130;
  *&v216 = v131;
  *(&v216 + 1) = 48;
  *&v217 = v130;
  *(&v217 + 1) = v85;
  LOBYTE(v218) = 0;
  *(&v218 + 1) = v84;
  LOBYTE(v219) = v82 & 1;
  v220 = 0;
  v221 = 0;
  v205 = v218;
  v206[0] = v219;
  *&v206[1] = 0;
  v203 = v216;
  v204 = v217;
  v222 = 1;
  BYTE8(v206[1]) = 1;
  v149 = v131;
  v144 = v86;
  outlined init with copy of PaceMetricView(&v216, &v194);
  _ConditionalContent<>.init(storage:)();
  v205 = v196;
  v206[0] = *v197;
  *(v206 + 9) = *&v197[9];
  v203 = v194;
  v204 = v195;
  v223 = 1;
  BYTE9(v206[1]) = 1;
  _ConditionalContent<>.init(storage:)();
  v196 = v201;
  *v197 = v202[0];
  *&v197[10] = *(v202 + 10);
  v194 = v199;
  v195 = v200;
  v224 = 0;
  v198 = 0;
  _ConditionalContent<>.init(storage:)();
  v87 = v206[0];
  v88 = v182;
  v182[2] = v205;
  v88[3] = v87;
  *(v88 + 59) = *(v206 + 11);
  v89 = v204;
  *v88 = v203;
  v88[1] = v89;
  swift_storeEnumTagMultiPayload();
  v90 = v183;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v90, v185, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  swift_storeEnumTagMultiPayload();
  v91 = v184;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v90, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v91, v189, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  swift_storeEnumTagMultiPayload();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of PaceMetricView(&v216);
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v91, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  v92 = swift_getKeyPath();
  v93 = v79 + *(v186 + 36);
  *v93 = v92;
  *(v93 + 8) = 5;
  v94 = v165;
  static AccessibilityChildBehavior.combine.getter();
  View.accessibilityElement(children:)();
  v188(v94, v187);
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v79, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd);
  MetricsPublisher.distance.getter();
  v96 = v95;
  v97 = FIUIDistanceTypeForActivityType();
  MetricsPublisher.trackRunningMetricsPublisher.getter();
  v98 = TrackRunningMetricsPublisher.trackRunningCoordinator.getter();

  v99 = dispatch thunk of TrackRunningCoordinator.preferredDistanceUnit.getter();
  LOBYTE(v91) = v100;

  v101 = swift_getKeyPath();
  v227 = v91 & 1;
  v225 = 0;
  *&v203 = v96;
  *(&v203 + 1) = v149;
  *&v204 = v97;
  *(&v204 + 1) = v99;
  LOBYTE(v205) = v91 & 1;
  *(&v205 + 1) = *v226;
  DWORD1(v205) = *&v226[3];
  *(&v205 + 1) = v101;
  LOWORD(v206[0]) = 0;
  v102 = v149;
  outlined copy of Environment<WorkoutViewStyle>.Content(v101, 0);
  lazy protocol witness table accessor for type DistanceMetricView and conformance DistanceMetricView();
  lazy protocol witness table accessor for type LapsMetricView and conformance LapsMetricView();
  _ConditionalContent<>.init(storage:)();
  v203 = v194;
  v204 = v195;
  v205 = v196;
  LOWORD(v206[0]) = *v197;
  v228 = 1;
  BYTE9(v206[1]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018DistanceMetricViewVAD04LapsgH0VGMd);
  lazy protocol witness table accessor for type _ConditionalContent<DistanceMetricView, LapsMetricView> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v196 = v201;
  *v197 = v202[0];
  *&v197[10] = *(v202 + 10);
  v194 = v199;
  v195 = v200;
  v229 = 1;
  v198 = 1;
  _ConditionalContent<>.init(storage:)();
  v103 = v206[0];
  v104 = v182;
  v182[2] = v205;
  v104[3] = v103;
  *(v104 + 59) = *(v206 + 11);
  v105 = v204;
  *v104 = v203;
  v104[1] = v105;
  swift_storeEnumTagMultiPayload();
  v106 = v183;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v106, v185, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  swift_storeEnumTagMultiPayload();
  v107 = v184;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v106, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd);
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v107, v189, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  swift_storeEnumTagMultiPayload();
  _ConditionalContent<>.init(storage:)();

  outlined consume of Environment<WorkoutViewStyle>.Content(v101, 0);
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v107, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd);
  v108 = swift_getKeyPath();
  v109 = v79 + *(v186 + 36);
  *v109 = v108;
  *(v109 + 8) = 5;
  static AccessibilityChildBehavior.combine.getter();
  v110 = v159;
  View.accessibilityElement(children:)();
  v188(v94, v187);
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v79, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd);
  v193 = *(v160 + 16);
  v111 = v156;
  v112 = v158;
  (v193)(v156, v157, v158);
  v113 = *(v164 + 16);
  v114 = v161;
  v115 = v146;
  v113(v161, v180, v146);
  v116 = v145;
  v113(v145, v181, v115);
  v113(v162, v179, v115);
  v117 = v110;
  v118 = v115;
  v113(v163, v117, v115);
  v119 = v147;
  (v193)(v147, v111, v112);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAA6ZStackVyAA05TupleC0VyAIy07WorkoutB009MirrorArcC0VAA0G18AttachmentModifierVG_AIyAN10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingR0VyAN0nC5StyleOGGAA011_ForegroundzR0VyAA5ColorVGG_Qo__AcAEAdEQrAG_tFQOyAIyAA012_ConditionalK0VyA13_yA13_yA13_yA13_yA13_yAN06EnergysC0VA15_GA13_yAN09HeartRatesC0VAN018HeartRateAggregatesC0VGGA13_yA13_yA20_AN04ZonesC0VGA13_yAN010TimeInZonesC0VA24_GGGA13_yA13_yA13_yA27_AN04PacesC0VGA13_yA32_A32_GGA13_yA34_A13_yAN08DistancesC0VAN04LapssC0VGGGGA13_yA13_yA13_yA13_yA13_yA13_yAN07CadencesC0VAA05EmptyC0VGA45_GA45_GA13_yAN015ElevationChangesC0VAN016CurrentElevationsC0VGGA13_yA13_yAN05PowersC0VA58_GA13_yA58_AN014FlightsClimbedsC0VGGGA13_yA13_yA13_yAN015SegmentDurationsC0VAN014DistanceDetailsC0VGA13_yA32_A15_GGA13_yA13_yA15_A58_GA13_yA58_AIyAIyAN0n4TimeC0VAN0S6DetailVGA9_GGGGGGA13_yA13_yA13_yA13_yA68_A32_GA13_yAN012StrideLengthsC0VA86_GGA13_yA13_yAN019VerticalOscillationsC0VA90_GA13_yAN017GroundContactTimesC0VA93_GGGA13_yA13_yA52_AN016DownhillRunCountsC0VGA13_yA47_AA6HStackVyAMyAIyAA0T0VAN0S9ValueFontVG_AIyAIyA103_AN0S19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA3_G_Qo_A121_A121_A121_tMd);
  v113((v119 + v120[12]), v114, v118);
  v113((v119 + v120[16]), v116, v118);
  v121 = v162;
  (v113)(v119 + v120[20]);
  v122 = (v119 + v120[24]);
  v123 = v163;
  v113(v122, v163, v118);
  v124 = *(v164 + 8);
  v124(v159, v118);
  v124(v179, v118);
  v124(v181, v118);
  v125 = v118;
  v124(v180, v118);
  v126 = *(v160 + 8);
  v127 = v158;
  v126(v157, v158);
  v124(v123, v125);
  v124(v121, v125);
  v124(v116, v125);
  v124(v161, v125);
  return (v126)(v156, v127);
}

uint64_t closure #1 in closure #1 in MirrorSpeedometerPlatterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB013MirrorArcViewVAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v29 = a1;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  MirrorSpeedometerPlatterView.value.getter();
  v11 = v10;
  v28 = v12;
  v13 = [*(a1 + 32) localizedSpeedUnitStringForActivityType_];
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

  if (one-time initialization token for heroHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v9, v6, &_s7SwiftUI15ModifiedContentVy07WorkoutB013MirrorArcViewVAA31AccessibilityAttachmentModifierVGMd);
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(v6, a2, &_s7SwiftUI15ModifiedContentVy07WorkoutB013MirrorArcViewVAA31AccessibilityAttachmentModifierVGMd);
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB013MirrorArcViewVAA31AccessibilityAttachmentModifierVG_ACyAD10MetricTextVAA12_FrameLayoutVGtMd) + 48);
  v19 = v28;
  *&v33 = v11;
  *(&v33 + 1) = v28;
  *&v34 = v15;
  *(&v34 + 1) = v17;
  v35 = 0uLL;
  LOWORD(v36) = 0;
  *(&v36 + 1) = 0;
  *v37 = 0;
  *&v37[24] = v31;
  *&v37[8] = v30;
  *&v37[40] = v32;
  v20 = v33;
  v21 = v34;
  v22 = v36;
  *(v18 + 32) = 0uLL;
  *(v18 + 48) = v22;
  *v18 = v20;
  *(v18 + 16) = v21;
  v23 = *v37;
  v24 = *&v37[16];
  v25 = *&v37[32];
  *(v18 + 112) = *&v37[48];
  *(v18 + 80) = v24;
  *(v18 + 96) = v25;
  *(v18 + 64) = v23;
  outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(&v33, v38, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA12_FrameLayoutVGMd);
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v9, &_s7SwiftUI15ModifiedContentVy07WorkoutB013MirrorArcViewVAA31AccessibilityAttachmentModifierVGMd);
  v38[0] = v11;
  v38[1] = v19;
  v38[2] = v15;
  v38[3] = v17;
  v38[4] = 0;
  v38[5] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v38, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA12_FrameLayoutVGMd);
  return outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(v6, &_s7SwiftUI15ModifiedContentVy07WorkoutB013MirrorArcViewVAA31AccessibilityAttachmentModifierVGMd);
}

void closure #1 in closure #1 in closure #1 in MirrorSpeedometerPlatterView.body.getter(uint64_t a1)
{
  v2 = 0.0;
  if (!MirrorSpeedometerPlatterView.speedUnavailable()())
  {
    MetricsPublisher.currentPace.getter();
    v2 = v3;
  }

  v4 = *(a1 + 32);
  v5 = [v4 unitManager];
  if (!v5)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 userDistanceCyclingUnit];

  LODWORD(v6) = MEMORY[0x20F30D2D0](v7);
  v8 = type metadata accessor for MirrorSpeedometerPlatterView();
  v9 = 40;
  if (v6)
  {
    v9 = 36;
  }

  v10 = *(a1 + *(v8 + v9));
  MetricsPublisher.fastestPace.getter();
  v12 = v11;
  *&v50[0] = 0;
  lazy protocol witness table accessor for type Int and conformance Int();
  v13 = BinaryInteger.formatted()();
  v14 = [objc_opt_self() meterUnit];
  v15 = [v4 unitManager];
  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = v15;
  v17 = [v15 userDistanceCyclingUnit];

  LODWORD(v17) = MEMORY[0x20F30D2D0](v17);
  v18 = type metadata accessor for MirrorSpeedometerPlatterView();
  v19 = 40;
  if (v17)
  {
    v19 = 36;
  }

  v20 = *(a1 + *(v18 + v19));
  MetricsPublisher.fastestPace.getter();
  if (v20 <= v21)
  {
    v20 = v21;
  }

  v22 = [objc_opt_self() quantityWithUnit:v14 doubleValue:v20];

  v23 = [v4 localizedPaceStringWithDistance:v22 overDuration:4 paceFormat:0 unitStyle:2 decimalTrimmingMode:FIUIDistanceTypeForActivityType() distanceType:1.0];
  if (!v23)
  {
    goto LABEL_26;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (one-time initialization token for lineWidth != -1)
  {
    swift_once();
  }

  v27 = static MirrorRingConstants.lineWidth;
  v28 = objc_opt_self();
  v29 = [v28 currentDevice];
  v30 = specialized UIDevice.screenType.getter();

  v31 = dbl_20CB6D4D0[v30];
  v32 = objc_opt_self();
  v33 = [v32 mainScreen];
  [v33 scale];
  v35 = v34;

  v36 = [v32 mainScreen];
  [v36 nativeScale];
  v38 = v37;

  if (v35 != v38)
  {
    v39 = [v32 mainScreen];
    [v39 scale];
    v41 = v40;

    v42 = [v32 mainScreen];
    [v42 nativeScale];
    v44 = v43;

    v31 = v31 * (v41 / v44 * 0.95);
  }

  if (v10 > v12)
  {
    v45 = v10;
  }

  else
  {
    v45 = v12;
  }

  v46 = 0.0;
  if (v2 >= 0.0)
  {
    v46 = v2;
  }

  if (v45 < v46)
  {
    v46 = v45;
  }

  *&v47 = v46;
  *(&v47 + 1) = v45;
  *&v48 = v24;
  *(&v48 + 1) = v26;
  *&v49 = v27;
  *(&v49 + 1) = 0x3FE867B5F1BEF49DLL;
  lazy protocol witness table accessor for type MirrorArcView and conformance MirrorArcView();
  View.accessibilityHidden(_:)();
  v50[2] = v48;
  v50[3] = v49;
  v51 = v31;
  v50[0] = v47;
  v50[1] = v13;
  outlined destroy of MirrorArcView(v50);
}

uint64_t protocol witness for View.body.getter in conformance MirrorSpeedometerPlatterView@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAUyAA6ZStackVyAMyAUyAH0i3ArcD0VAA0Q18AttachmentModifierVG_AUyAH10MetricTextVAA06_FrameF0VGtGGAA022_EnvironmentKeyWritingY0VyAH0hD5StyleOGGAA016_ForegroundStyleY0VyAA5ColorVGG_Qo__AoAEApQQrAS_tFQOyAUyAA012_ConditionalU0VyA22_yA22_yA22_yA22_yA22_yAH06EnergyzD0VA24_GA22_yAH09HeartRatezD0VAH018HeartRateAggregatezD0VGGA22_yA22_yA29_AH04ZonezD0VGA22_yAH010TimeInZonezD0VA33_GGGA22_yA22_yA22_yA36_AH04PacezD0VGA22_yA41_A41_GGA22_yA43_A22_yAH08DistancezD0VAH04LapszD0VGGGGA22_yA22_yA22_yA22_yA22_yA22_yAH07CadencezD0VAA05EmptyD0VGA54_GA54_GA22_yAH015ElevationChangezD0VAH016CurrentElevationzD0VGGA22_yA22_yAH05PowerzD0VA67_GA22_yA67_AH014FlightsClimbedzD0VGGGA22_yA22_yA22_yAH015SegmentDurationzD0VAH014DistanceDetailzD0VGA22_yA41_A24_GGA22_yA22_yA24_A67_GA22_yA67_AUyAUyAH0h4TimeD0VAH0Z6DetailVGA18_GGGGGGA22_yA22_yA22_yA22_yA77_A41_GA22_yAH012StrideLengthzD0VA95_GGA22_yA22_yAH019VerticalOscillationzD0VA99_GA22_yAH017GroundContactTimezD0VA102_GGGA22_yA22_yA61_AH016DownhillRunCountzD0VGA22_yA56_AA6HStackVyAMyAUyAA4TextVAH0Z9ValueFontVG_AUyAUyA112_AH0Z19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA12_G_Qo_A130_A130_A130_tGGMd);
  return closure #1 in MirrorSpeedometerPlatterView.body.getter(v1, &a1[*(v3 + 44)]);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACy07WorkoutB009MirrorArcG0VAA31AccessibilityAttachmentModifierVG_ACyAH10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingM0VyAH0hG5StyleOGGAA011_ForegrounduM0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACy07WorkoutB009MirrorArcG0VAA31AccessibilityAttachmentModifierVG_ACyAH10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingM0VyAH0hG5StyleOGGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB009MirrorArcE0VAA31AccessibilityAttachmentModifierVG_AGyAH10MetricTextVAA12_FrameLayoutVGtGGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s11WorkoutCore16MetricsPublisherCAC7Combine16ObservableObjectAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t outlined init with copy of HeartRateMetricView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateMetricView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of HeartRateMetricView(uint64_t a1)
{
  v2 = type metadata accessor for HeartRateMetricView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _ForegroundStyleModifier<Color>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_0(uint64_t a1, unint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type MirrorArcView and conformance MirrorArcView()
{
  result = lazy protocol witness table cache variable for type MirrorArcView and conformance MirrorArcView;
  if (!lazy protocol witness table cache variable for type MirrorArcView and conformance MirrorArcView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirrorArcView and conformance MirrorArcView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>> and conformance <> _VariadicView.Tree<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAUyAA6ZStackVyAMyAUyAH0i3ArcD0VAA0Q18AttachmentModifierVG_AUyAH10MetricTextVAA06_FrameF0VGtGGAA022_EnvironmentKeyWritingY0VyAH0hD5StyleOGGAA016_ForegroundStyleY0VyAA5ColorVGG_Qo__AoAEApQQrAS_tFQOyAUyAA012_ConditionalU0VyA22_yA22_yA22_yA22_yA22_yAH06EnergyzD0VA24_GA22_yAH09HeartRatezD0VAH018HeartRateAggregatezD0VGGA22_yA22_yA29_AH04ZonezD0VGA22_yAH010TimeInZonezD0VA33_GGGA22_yA22_yA22_yA36_AH04PacezD0VGA22_yA41_A41_GGA22_yA43_A22_yAH08DistancezD0VAH04LapszD0VGGGGA22_yA22_yA22_yA22_yA22_yA22_yAH07CadencezD0VAA05EmptyD0VGA54_GA54_GA22_yAH015ElevationChangezD0VAH016CurrentElevationzD0VGGA22_yA22_yAH05PowerzD0VA67_GA22_yA67_AH014FlightsClimbedzD0VGGGA22_yA22_yA22_yAH015SegmentDurationzD0VAH014DistanceDetailzD0VGA22_yA41_A24_GGA22_yA22_yA24_A67_GA22_yA67_AUyAUyAH0h4TimeD0VAH0Z6DetailVGA18_GGGGGGA22_yA22_yA22_yA22_yA77_A41_GA22_yAH012StrideLengthzD0VA95_GGA22_yA22_yAH019VerticalOscillationzD0VA99_GA22_yAH017GroundContactTimezD0VA102_GGGA22_yA22_yA61_AH016DownhillRunCountzD0VGA22_yA56_AA6HStackVyAMyAUyAA4TextVAH0Z9ValueFontVG_AUyAUyA112_AH0Z19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA12_G_Qo_A130_A130_A130_tGGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _LayoutRoot<MirrorHeroGraphicsMetricsViewLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVy07WorkoutB0029MirrorHeroGraphicsMetricsViewC0VGMd);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAA6ZStackVyACyAKy07WorkoutB009MirrorArcD0VAA0H18AttachmentModifierVG_AKyAN10MetricTextVAA12_FrameLayoutVGtGGAA022_EnvironmentKeyWritingR0VyAN0nD5StyleOGGAA011_ForegroundzR0VyAA5ColorVGG_Qo__AeAEAfGQrAI_tFQOyAKyAA012_ConditionalL0VyA13_yA13_yA13_yA13_yA13_yAN06EnergysD0VA15_GA13_yAN09HeartRatesD0VAN018HeartRateAggregatesD0VGGA13_yA13_yA20_AN04ZonesD0VGA13_yAN010TimeInZonesD0VA24_GGGA13_yA13_yA13_yA27_AN04PacesD0VGA13_yA32_A32_GGA13_yA34_A13_yAN08DistancesD0VAN04LapssD0VGGGGA13_yA13_yA13_yA13_yA13_yA13_yAN07CadencesD0VAA05EmptyD0VGA45_GA45_GA13_yAN015ElevationChangesD0VAN016CurrentElevationsD0VGGA13_yA13_yAN05PowersD0VA58_GA13_yA58_AN014FlightsClimbedsD0VGGGA13_yA13_yA13_yAN015SegmentDurationsD0VAN014DistanceDetailsD0VGA13_yA32_A15_GGA13_yA13_yA15_A58_GA13_yA58_AKyAKyAN0n4TimeD0VAN0S6DetailVGA9_GGGGGGA13_yA13_yA13_yA13_yA68_A32_GA13_yAN012StrideLengthsD0VA86_GGA13_yA13_yAN019VerticalOscillationsD0VA90_GA13_yAN017GroundContactTimesD0VA93_GGGA13_yA13_yA52_AN016DownhillRunCountsD0VGA13_yA47_AA6HStackVyACyAKyAA0T0VAN0S9ValueFontVG_AKyAKyA103_AN0S19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA3_G_Qo_A121_A121_A121_tGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<MirrorArcView, AccessibilityAttachmentModifier>, ModifiedContent<MetricText, _FrameLayout>)>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2)
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

char *WorkoutCountdownAnimatedViewRepresentable.makeUIView(context:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;
  v10 = &a2[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownCompleted];
  swift_beginAccess();
  v11 = *v10;
  *v10 = partial apply for closure #1 in WorkoutCountdownAnimatedViewRepresentable.makeUIView(context:);
  v10[1] = v9;
  v12 = a2;

  outlined copy of (@escaping @callee_guaranteed () -> ())?(a4);
  _s9WorkoutUI0A13CountdownStepOIegn_SgWOe_0(v11);
  WorkoutCountdownAnimatedView.prepare()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI26UIViewRepresentableContextVy07WorkoutB00f21CountdownAnimatedViewD0VGMd);
  UIViewRepresentableContext.coordinator.getter();
  v13 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v16 action:sel_viewTap];

  v14 = v13;
  [v12 addGestureRecognizer_];
  UIViewRepresentableContext.coordinator.getter();
  [v14 setDelegate_];

  return v12;
}

uint64_t closure #1 in WorkoutCountdownAnimatedViewRepresentable.makeUIView(context:)(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  if (*(a2 + 17) != 5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

Swift::Void __swiftcall WorkoutCountdownAnimatedViewRepresentable.skipCountdown()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  swift_getKeyPath();
  v21[1] = v4;
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__supportsTapToSkipCountdown;
  swift_beginAccess();
  if (*(v4 + v13) == 1)
  {
    static WOLog.app.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20C66F000, v14, v15, "Skipping countdown", v16, 2u);
      MEMORY[0x20F30E080](v16, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    v17 = [*(*(v5 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_countdownRingView) + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_animator) cancelAnimations];
    if (v3)
    {
      v3(v17);
    }
  }

  else
  {
    static WOLog.app.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20C66F000, v18, v19, "supportsTapToSkipCountdown is false, not skipping countdown", v20, 2u);
      MEMORY[0x20F30E080](v20, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }
}

Swift::Void __swiftcall WorkoutCountdownAnimatedViewRepresentable.Coordinator.viewTap()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.app.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20C66F000, v6, v7, "Countdown view tapped", v8, 2u);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + OBJC_IVAR____TtCV9WorkoutUI41WorkoutCountdownAnimatedViewRepresentable11Coordinator_parent + 16);
  v10 = *(v1 + OBJC_IVAR____TtCV9WorkoutUI41WorkoutCountdownAnimatedViewRepresentable11Coordinator_parent);

  outlined copy of (@escaping @callee_guaranteed () -> ())?(v9);
  WorkoutCountdownAnimatedViewRepresentable.skipCountdown()();

  _s9WorkoutUI0A13CountdownStepOIegn_SgWOe_0(v9);
}

id WorkoutCountdownAnimatedViewRepresentable.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutCountdownAnimatedViewRepresentable.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for WorkoutCountdownAnimatedViewRepresentable(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutCountdownAnimatedViewRepresentable(uint64_t result, int a2, int a3)
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

id protocol witness for UIViewRepresentable.makeCoordinator() in conformance WorkoutCountdownAnimatedViewRepresentable@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = type metadata accessor for WorkoutCountdownAnimatedViewRepresentable.Coordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV9WorkoutUI41WorkoutCountdownAnimatedViewRepresentable11Coordinator_parent];
  *v9 = v4;
  *(v9 + 1) = v3;
  *(v9 + 2) = v6;
  *(v9 + 3) = v5;
  v10 = v4;

  outlined copy of (@escaping @callee_guaranteed () -> ())?(v6);
  v12.receiver = v8;
  v12.super_class = v7;
  result = objc_msgSendSuper2(&v12, sel_init);
  *a1 = result;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance WorkoutCountdownAnimatedViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance WorkoutCountdownAnimatedViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance WorkoutCountdownAnimatedViewRepresentable()
{
  lazy protocol witness table accessor for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable()
{
  result = lazy protocol witness table cache variable for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable;
  if (!lazy protocol witness table cache variable for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable;
  if (!lazy protocol witness table cache variable for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutCountdownAnimatedViewRepresentable and conformance WorkoutCountdownAnimatedViewRepresentable);
  }

  return result;
}

char *specialized WorkoutCountdownAnimatedViewRepresentable.init(sessionViewModel:onCountdownStep:onCountdownSkipped:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  v23[0] = a1;
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v6 = *(a1 + 24);
  WorkoutConfiguration.colors.getter(v23);

  v8 = v23[0];
  v7 = v23[1];
  v10 = v23[2];
  v9 = v23[3];

  swift_getKeyPath();
  v22[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(a1 + 24);

  WorkoutConfiguration.colors.getter(v22);

  v12 = v22[0];
  v13 = v22[1];
  v14 = v22[2];
  v15 = v22[3];

  v16 = objc_allocWithZone(type metadata accessor for WorkoutCountdownAnimatedView());
  v17 = WorkoutCountdownAnimatedView.init(diameter:thickness:isOpaque:topColor:bottomColor:)(1, v10, v13, 255.0, 17.5);
  v18 = &v17[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownStep];
  swift_beginAccess();
  v19 = *v18;
  *v18 = a2;
  v18[1] = a3;
  v20 = v17;
  _s9WorkoutUI0A13CountdownStepOIegn_SgWOe_0(v19);

  return v20;
}

id specialized WorkoutCountdownAnimatedViewRepresentable.updateUIView(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  if (*(a3 + 16) == 1)
  {
    type metadata accessor for WorkoutSignposter();
    v6 = static WorkoutSignposter.shared.getter();
    dispatch thunk of WorkoutSignposter.emit(signpost:)();

    result = [*(*(a2 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_countdownRingView) + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_animator) beginAnimations];
    if (*(a3 + 16))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(a3 + 16) = 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel()
{
  result = lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel;
  if (!lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel)
  {
    type metadata accessor for SessionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel);
  }

  return result;
}

uint64_t EmbeddedIntervalConfigurationView.init(intervalConfiguration:formattingManager:referenceIntervalWorkoutConfiguration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t EmbeddedIntervalConfigurationView.body.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = IntervalWorkoutConfiguration.intervalWorkout.getter();
  v5 = IntervalWorkout.blocks.getter();

  if (!(v5 >> 62))
  {

LABEL_3:
    swift_getKeyPath();
    v6 = swift_allocObject();
    v6[2] = v1;
    v6[3] = v2;
    v6[4] = v3;
    v7 = v3;
    v8 = v1;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOy07WorkoutB0012BlockSectionC0V_Qo_Md);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    lazy protocol witness table accessor for type BlockSectionView and conformance BlockSectionView();
    swift_getOpaqueTypeConformance2();
    return ForEach<>.init(_:id:content:)();
  }

  v11 = __CocoaSet.count.getter();

  if ((v11 & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void closure #1 in EmbeddedIntervalConfigurationView.body.getter(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for AccessibilityChildBehavior();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = IntervalWorkoutConfiguration.intervalWorkout.getter();
  v13 = IntervalWorkout.blocks.getter();

  if ((v13 & 0xC000000000000001) == 0)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v13 + 8 * v11 + 32);

      goto LABEL_5;
    }

    __break(1u);
LABEL_15:
    a4 = MEMORY[0x20F30C990](v11, v13);
    goto LABEL_10;
  }

  v12 = MEMORY[0x20F30C990](v11, v13);
LABEL_5:

  if (!a4)
  {
LABEL_11:
    v16[1] = v12;
    v16[2] = a3;
    v16[3] = a4;

    v15 = a3;
    static AccessibilityChildBehavior.combine.getter();
    lazy protocol witness table accessor for type BlockSectionView and conformance BlockSectionView();
    View.accessibilityElement(children:)();

    (*(v8 + 8))(v10, v7);

    return;
  }

  v14 = IntervalWorkoutConfiguration.intervalWorkout.getter();
  v13 = IntervalWorkout.blocks.getter();

  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    a4 = *(v13 + 8 * v11 + 32);

LABEL_10:

    goto LABEL_11;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type BlockSectionView and conformance BlockSectionView()
{
  result = lazy protocol witness table cache variable for type BlockSectionView and conformance BlockSectionView;
  if (!lazy protocol witness table cache variable for type BlockSectionView and conformance BlockSectionView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BlockSectionView and conformance BlockSectionView);
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance EmbeddedIntervalConfigurationView()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = IntervalWorkoutConfiguration.intervalWorkout.getter();
  v5 = IntervalWorkout.blocks.getter();

  if (!(v5 >> 62))
  {

LABEL_3:
    swift_getKeyPath();
    v6 = swift_allocObject();
    v6[2] = v1;
    v6[3] = v2;
    v6[4] = v3;
    v7 = v3;
    v8 = v1;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOy07WorkoutB0012BlockSectionC0V_Qo_Md);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    lazy protocol witness table accessor for type BlockSectionView and conformance BlockSectionView();
    swift_getOpaqueTypeConformance2();
    return ForEach<>.init(_:id:content:)();
  }

  v11 = __CocoaSet.count.getter();

  if ((v11 & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for EmbeddedIntervalConfigurationView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for EmbeddedIntervalConfigurationView(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type ForEach<Range<Int>, Int, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySnySiGSiAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOy07WorkoutB0012BlockSectionE0V_Qo_GMd);
    lazy protocol witness table accessor for type BlockSectionView and conformance BlockSectionView();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.accessibilityElement(children:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t objectdestroyTm_32()
{

  return swift_deallocObject();
}

uint64_t MultisportMedallionView.isLuminanceReduced.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
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

uint64_t MultisportMedallionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31[1] = a1;
  v32 = type metadata accessor for AccessibilityChildBehavior();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6ZStackVyAEy07WorkoutB0015MedallionCircleE0V_AGyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingO0VyAA06ZIndexP3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalG0VyAEyAGyAGyAlXGAPGSg_ALSgtGAIyAEyAGyAGyAA7CapsuleVAA012_EnvironmentsqO0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA14_PaddingLayoutVGA23_GAUyAA014LayoutPrioritypS0VGGAPGtGGGtGGMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v31 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA6ZStackVyAGy07WorkoutB0015MedallionCircleG0V_ACyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingO0VyAA06ZIndexP3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalD0VyAGyACyACyAlXGAPGSg_ALSgtGAIyAGyACyACyAA7CapsuleVAA012_EnvironmentsqO0VyAA5ColorVSgGGAA12_FrameLayoutVG_ACyACyACyACyAA4TextVAA14_PaddingLayoutVGA23_GAUyAA014LayoutPrioritypS0VGGAPGtGGGtGGA23_GMd);
  MEMORY[0x28223BE20](v8);
  v10 = v31 - v9;
  v11 = *(v1 + 48);
  v34 = *(v1 + 32);
  v35 = v11;
  v12 = *(v1 + 80);
  v36 = *(v1 + 64);
  v37 = v12;
  v38 = *(v1 + 96);
  v13 = *(v1 + 16);
  v33[0] = *v1;
  v33[1] = v13;
  v14 = -(*&v34 * *&v36);
  *v7 = static VerticalAlignment.center.getter();
  v7[1] = v14;
  *(v7 + 16) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6ZStackVyAIy07WorkoutB0015MedallionCircleD0V_AKyAN0L6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingR0VyAA06ZIndexS3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalJ0VyAIyAKyAKyAPA0_GATGSg_APSgtGAMyAIyAKyAKyAA7CapsuleVAA012_EnvironmentvtR0VyAA5ColorVSgGGAA06_FrameG0VG_AKyAKyAKyAKyAA4TextVAA08_PaddingG0VGA27_GAYyAA0g8PrioritysV0VGGATGtGGGtGGMd);
  closure #1 in MultisportMedallionView.body.getter(v33, v7 + *(v15 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5EA80;
  v17 = static Edge.Set.top.getter();
  *(inited + 32) = v17;
  v18 = static Edge.Set.bottom.getter();
  *(inited + 33) = v18;
  v19 = static Edge.Set.leading.getter();
  *(inited + 34) = v19;
  v20 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v17)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v18)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v19)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  outlined init with take of HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>(v7, v10, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6ZStackVyAEy07WorkoutB0015MedallionCircleE0V_AGyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingO0VyAA06ZIndexP3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalG0VyAEyAGyAGyAlXGAPGSg_ALSgtGAIyAEyAGyAGyAA7CapsuleVAA012_EnvironmentsqO0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA14_PaddingLayoutVGA23_GAUyAA014LayoutPrioritypS0VGGAPGtGGGtGGMd);
  v29 = &v10[*(v8 + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  View.accessibilityElement(children:)();
  (*(v2 + 8))(v4, v32);
  return outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v10, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA6ZStackVyAGy07WorkoutB0015MedallionCircleG0V_ACyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingO0VyAA06ZIndexP3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalD0VyAGyACyACyAlXGAPGSg_ALSgtGAIyAGyACyACyAA7CapsuleVAA012_EnvironmentsqO0VyAA5ColorVSgGGAA12_FrameLayoutVG_ACyACyACyACyAA4TextVAA14_PaddingLayoutVGA23_GAUyAA014LayoutPrioritypS0VGGAPGtGGGtGGA23_GMd);
}

uint64_t closure #1 in MultisportMedallionView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingO0VGAWGAA06_TraitkL0VyAA0o8PriorityrJ0VGGAA023AccessibilityAttachmentL0VGtGGMd);
  MEMORY[0x28223BE20](v3);
  v5 = (&v69 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA08ModifiedD0VyAIy07WorkoutB0015MedallionCircleG0VAA21_TraitWritingModifierVyAA06ZIndexL3KeyVGGAA023AccessibilityAttachmentN0VGSg_ALSgtGAA6ZStackVyAGyAIyAIyAA7CapsuleVAA012_EnvironmentpmN0VyAA5ColorVSgGGAA12_FrameLayoutVG_AIyAIyAIyAIyAA4TextVAA08_PaddingX0VGA14_GANyAA0x8PrioritylP0VGGATGtGG_GMd);
  MEMORY[0x28223BE20](v6);
  v8 = &v69 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0015MedallionCircleD0VAA21_TraitWritingModifierVyAA06ZIndexJ3KeyVGGAA023AccessibilityAttachmentL0VGSg_AHSgtGMd);
  MEMORY[0x28223BE20](v9);
  v79 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGMd);
  v76 = *(v11 - 8);
  v77 = v11;
  MEMORY[0x28223BE20](v11);
  v75 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v78 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v69 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGy07WorkoutB0015MedallionCircleF0VAA21_TraitWritingModifierVyAA06ZIndexK3KeyVGGAA023AccessibilityAttachmentM0VGSg_AJSgtGAA6ZStackVyAEyAGyAGyAA7CapsuleVAA012_EnvironmentolM0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingW0VGA12_GALyAA0w8PrioritykO0VGGARGtGGGMd);
  MEMORY[0x28223BE20](v18 - 8);
  v81 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v69 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGAA17_FlipForRTLEffectVGMd);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v80 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = (&v69 - v27);
  *v28 = static Alignment.center.getter();
  v28[1] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0Vy07WorkoutB0015MedallionCircleD0V_AA15ModifiedContentVyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGMd);
  closure #1 in closure #1 in MultisportMedallionView.body.getter(a1, v28 + *(v30 + 44));
  *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGMd) + 36)) = 0x3FF0000000000000;
  v31 = *(v24 + 44);
  v32 = a1;
  *(v28 + v31) = 1;
  v33 = a1[6];
  if (v33 <= 2)
  {
    v72 = v6;
    v73 = v9;
    v71 = v8;
    v74 = v3;
    if (v33 < 1)
    {
      v36 = v17;
      (*(v76 + 56))(v17, 1, 1, v77);
    }

    else
    {
      v34 = *(v32 + 32);
      v35 = v34 + *(v32 + 72);
      v36 = v17;
      if (one-time initialization token for secondaryPlatterColor != -1)
      {
        swift_once();
      }

      v69 = v32;
      v37 = static MultiSportWorkoutConfiguration.secondaryPlatterColor;
      v38 = Color.init(uiColor:)();
      v85 = v35;
      v86 = v34;
      v87 = v38;
      v88 = 0x3FE8000000000000;
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v39 = WorkoutUIBundle.super.isa;
      v89._object = 0xE000000000000000;
      v40.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v40.value._object = 0xEB00000000656C62;
      v41._object = 0x800000020CB97020;
      v41._countAndFlagsBits = 0xD000000000000017;
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      v89._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v40, v39, v42, v89);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v43 = swift_allocObject();
      v44 = MEMORY[0x277D83B88];
      *(v43 + 16) = xmmword_20CB5DA70;
      v45 = MEMORY[0x277D83C10];
      *(v43 + 56) = v44;
      *(v43 + 64) = v45;
      *(v43 + 32) = v33;
      v46 = static String.localizedStringWithFormat(_:_:)();
      v48 = v47;

      v83 = v46;
      v84 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGMd);
      lazy protocol witness table accessor for type ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type String and conformance String();
      v49 = v75;
      View.accessibilityLabel<A>(_:)();

      outlined init with take of HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>(v49, v36, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGMd);
      (*(v76 + 56))(v36, 0, 1, v77);
      if (v33 == 2)
      {
        v50 = *(v69 + 32);
        v51 = *(v69 + 72);
        v52 = v71;
        if (one-time initialization token for tertiaryPlatterColor != -1)
        {
          swift_once();
        }

        v53 = v50 + v51;
        v54 = static MultiSportWorkoutConfiguration.tertiaryPlatterColor;
        v55 = Color.init(uiColor:)();
        v56 = v50;

        goto LABEL_14;
      }
    }

    v56 = 0.0;
    v55 = 0;
    v53 = 0.0;
    v52 = v71;
LABEL_14:
    v70 = v36;
    v61 = v78;
    outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v36, v78, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGSgMd);
    v62 = v79;
    outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v61, v79, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGSgMd);
    v63 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGSg_AFSgtMd) + 48);
    *v63 = v53;
    *(v63 + 8) = v56;
    *(v63 + 16) = v55;
    outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v61, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGSgMd);
    outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v62, v52, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0015MedallionCircleD0VAA21_TraitWritingModifierVyAA06ZIndexJ3KeyVGGAA023AccessibilityAttachmentL0VGSg_AHSgtGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0015MedallionCircleD0VAA21_TraitWritingModifierVyAA06ZIndexJ3KeyVGGAA023AccessibilityAttachmentL0VGSg_AHSgtGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingO0VGAWGAA06_TraitkL0VyAA0o8PriorityrJ0VGGAA023AccessibilityAttachmentL0VGtGGMd);
    _ConditionalContent<>.init(storage:)();

    outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v62, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0015MedallionCircleD0VAA21_TraitWritingModifierVyAA06ZIndexJ3KeyVGGAA023AccessibilityAttachmentL0VGSg_AHSgtGMd);
    v59 = v70;
    v60 = &_s7SwiftUI15ModifiedContentVyACy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGAA023AccessibilityAttachmentK0VGSgMd;
    goto LABEL_15;
  }

  *v5 = static Alignment.center.getter();
  v5[1] = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameG0VG_AKyAKyAKyAKyAA4TextVAA08_PaddingG0VGA_GAA06_TraitnO0VyAA0g8PrioritytM0VGGAA023AccessibilityAttachmentO0VGtGGMd);
  closure #2 in closure #1 in MultisportMedallionView.body.getter(v32, v5 + *(v58 + 44));
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v5, v8, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingO0VGAWGAA06_TraitkL0VyAA0o8PriorityrJ0VGGAA023AccessibilityAttachmentL0VGtGGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0015MedallionCircleD0VAA21_TraitWritingModifierVyAA06ZIndexJ3KeyVGGAA023AccessibilityAttachmentL0VGSg_AHSgtGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingO0VGAWGAA06_TraitkL0VyAA0o8PriorityrJ0VGGAA023AccessibilityAttachmentL0VGtGGMd);
  _ConditionalContent<>.init(storage:)();
  v59 = v5;
  v60 = &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingO0VGAWGAA06_TraitkL0VyAA0o8PriorityrJ0VGGAA023AccessibilityAttachmentL0VGtGGMd;
LABEL_15:
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v59, v60);
  v64 = v82;
  v65 = v80;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v28, v80, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGAA17_FlipForRTLEffectVGMd);
  v66 = v81;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v22, v81, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGy07WorkoutB0015MedallionCircleF0VAA21_TraitWritingModifierVyAA06ZIndexK3KeyVGGAA023AccessibilityAttachmentM0VGSg_AJSgtGAA6ZStackVyAEyAGyAGyAA7CapsuleVAA012_EnvironmentolM0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingW0VGA12_GALyAA0w8PrioritykO0VGGARGtGGGMd);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v65, v64, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGAA17_FlipForRTLEffectVGMd);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalD0VyAGyACyACyAjVGANGSg_AJSgtGAEyAGyACyACyAA7CapsuleVAA012_EnvironmentrpN0VyAA5ColorVSgGGAA12_FrameLayoutVG_ACyACyACyACyAA4TextVAA14_PaddingLayoutVGA21_GASyAA014LayoutPriorityoR0VGGANGtGGGtMd);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v66, v64 + *(v67 + 48), &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGy07WorkoutB0015MedallionCircleF0VAA21_TraitWritingModifierVyAA06ZIndexK3KeyVGGAA023AccessibilityAttachmentM0VGSg_AJSgtGAA6ZStackVyAEyAGyAGyAA7CapsuleVAA012_EnvironmentolM0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingW0VGA12_GALyAA0w8PrioritykO0VGGARGtGGGMd);
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v22, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGy07WorkoutB0015MedallionCircleF0VAA21_TraitWritingModifierVyAA06ZIndexK3KeyVGGAA023AccessibilityAttachmentM0VGSg_AJSgtGAA6ZStackVyAEyAGyAGyAA7CapsuleVAA012_EnvironmentolM0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingW0VGA12_GALyAA0w8PrioritykO0VGGARGtGGGMd);
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v28, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGAA17_FlipForRTLEffectVGMd);
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v66, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGy07WorkoutB0015MedallionCircleF0VAA21_TraitWritingModifierVyAA06ZIndexK3KeyVGGAA023AccessibilityAttachmentM0VGSg_AJSgtGAA6ZStackVyAEyAGyAGyAA7CapsuleVAA012_EnvironmentolM0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA08_PaddingW0VGA12_GALyAA0w8PrioritykO0VGGARGtGGGMd);
  return outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v65, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVy07WorkoutB0015MedallionCircleG0V_ACyAH0H6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingN0VyAA06ZIndexO3KeyVGGAA17_FlipForRTLEffectVGMd);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA6ZStackVyAGy07WorkoutB0015MedallionCircleG0V_ACyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingO0VyAA06ZIndexP3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalD0VyAGyACyACyAlXGAPGSg_ALSgtGAIyAGyACyACyAA7CapsuleVAA012_EnvironmentsqO0VyAA5ColorVSgGGAA12_FrameLayoutVG_ACyACyACyACyAA4TextVAA14_PaddingLayoutVGA23_GAUyAA014LayoutPrioritypS0VGGAPGtGGGtGGA23_GMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6ZStackVyAEy07WorkoutB0015MedallionCircleE0V_AGyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingO0VyAA06ZIndexP3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalG0VyAEyAGyAGyAlXGAPGSg_ALSgtGAIyAEyAGyAGyAA7CapsuleVAA012_EnvironmentsqO0VyAA5ColorVSgGGAA12_FrameLayoutVG_AGyAGyAGyAGyAA4TextVAA14_PaddingLayoutVGA23_GAUyAA014LayoutPrioritypS0VGGAPGtGGGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in closure #1 in MultisportMedallionView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E6FigureVAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v32 - v12;
  v14 = *(a1 + 4);
  v15 = *(a1 + 9);
  if (one-time initialization token for primaryPlatterColor != -1)
  {
    swift_once();
  }

  v16 = static MultiSportWorkoutConfiguration.primaryPlatterColor;
  v17 = Color.init(uiColor:)();
  v19 = a1[2];
  v18 = a1[3];
  if (a1[7])
  {
    v33 = v5;
    v34 = v4;
    v40 = *(a1 + 8);
    v20 = *a1;
    v39 = *a1;
    v21 = v40;
    v22 = v19;
    v23 = v18;
    if (v21 != 1)
    {
      outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(&v39, &v35, &_s7SwiftUI11EnvironmentVySbGMd);
      v32[3] = static os_log_type_t.fault.getter();
      v24 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(&v39, &_s7SwiftUI11EnvironmentVySbGMd);
      (*(v33 + 8))(v7, v34);
      LOBYTE(v20) = v35;
    }

    v25 = LOBYTE(v20) ^ 1;
  }

  else
  {
    v26 = v19;
    v27 = v18;
    v25 = 0;
  }

  v28 = *(a1 + 40);
  v35 = v19;
  v36 = v28 & 1;
  v37 = v18;
  v38 = v25 & 1;
  lazy protocol witness table accessor for type WorkoutFigure and conformance WorkoutFigure();
  View.accessibilitySortPriority(_:)();
  v29 = v35;

  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v13, v10, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E6FigureVAA31AccessibilityAttachmentModifierVGMd);
  *a2 = v14 + v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v17;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI19MedallionCircleViewV_05SwiftB015ModifiedContentVyAA0A6FigureVAD31AccessibilityAttachmentModifierVGtMd);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v10, a2 + *(v30 + 48), &_s7SwiftUI15ModifiedContentVy07WorkoutB00E6FigureVAA31AccessibilityAttachmentModifierVGMd);

  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v13, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E6FigureVAA31AccessibilityAttachmentModifierVGMd);
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v10, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E6FigureVAA31AccessibilityAttachmentModifierVGMd);
}

uint64_t closure #2 in closure #1 in MultisportMedallionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v71 - v4;
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGAA023AccessibilityAttachmentJ0VGMd);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v76 = &v71 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd);
  MEMORY[0x28223BE20](v11);
  v75 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v71 - v14;
  v16 = *MEMORY[0x277CE0118];
  v17 = type metadata accessor for RoundedCornerStyle();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  if (one-time initialization token for tertiaryPlatterColor != -1)
  {
    swift_once();
  }

  v18 = static MultiSportWorkoutConfiguration.tertiaryPlatterColor;
  v19 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v21 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd) + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v22 = &v15[*(v11 + 36)];
  v23 = v92;
  *v22 = v91;
  *(v22 + 1) = v23;
  *(v22 + 2) = v93;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 43;
  v24._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v24);
  v73 = *(a1 + 48);
  *&v94[0] = v73;
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v25);
  LocalizedStringKey.init(stringInterpolation:)();
  v26 = Text.init(_:tableName:bundle:comment:)();
  v28 = v27;
  LOBYTE(KeyPath) = v29;
  static Font.Weight.medium.getter();
  v74 = v15;
  v72 = a1;
  v30 = *MEMORY[0x277CE09A0];
  v31 = type metadata accessor for Font.Design();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v5, v30, v31);
  (*(v32 + 56))(v5, 0, 1, v31);
  static Font.system(size:weight:design:)();
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v5, &_s7SwiftUI4FontV6DesignOSgMd);
  v33 = Text.font(_:)();
  v35 = v34;
  LOBYTE(v31) = v36;

  outlined consume of Text.Storage(v26, v28, KeyPath & 1);

  v37 = *(v72 + 24);
  Color.init(uiColor:)();
  Color.opacity(_:)();

  v38 = Text.foregroundColor(_:)();
  v71 = v39;
  LOBYTE(v32) = v40;
  v42 = v41;

  outlined consume of Text.Storage(v33, v35, v31 & 1);

  LOBYTE(v26) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  LOBYTE(v82) = v32 & 1;
  v81 = 0;
  LOBYTE(v33) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v94[0]) = 0;
  *&v82 = v38;
  *(&v82 + 1) = v71;
  LOBYTE(v83) = v32 & 1;
  *(&v83 + 1) = v42;
  LOBYTE(v84) = v26;
  *(&v84 + 1) = v44;
  *&v85 = v46;
  *(&v85 + 1) = v48;
  *&v86 = v50;
  BYTE8(v86) = 0;
  LOBYTE(v87) = v33;
  *(&v87 + 1) = v51;
  *&v88 = v52;
  *(&v88 + 1) = v53;
  *&v89 = v54;
  BYTE8(v89) = 0;
  v90 = 0x3FF0000000000000;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v55 = WorkoutUIBundle.super.isa;
  v96._object = 0xE000000000000000;
  v56.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v56.value._object = 0xEB00000000656C62;
  v57._object = 0x800000020CB97020;
  v57._countAndFlagsBits = 0xD000000000000017;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  v96._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v57, v56, v55, v58, v96);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_20CB5DA70;
  v60 = MEMORY[0x277D83C10];
  *(v59 + 56) = MEMORY[0x277D83B88];
  *(v59 + 64) = v60;
  *(v59 + 32) = v73;
  v61 = static String.localizedStringWithFormat(_:_:)();
  v63 = v62;

  v79 = v61;
  v80 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  v64 = v76;
  View.accessibilityLabel<A>(_:)();

  v94[6] = v88;
  v94[7] = v89;
  v95 = v90;
  v94[2] = v84;
  v94[3] = v85;
  v94[4] = v86;
  v94[5] = v87;
  v94[0] = v82;
  v94[1] = v83;
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v94, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGMd);
  v66 = v74;
  v65 = v75;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v74, v75, &_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd);
  v67 = v77;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v64, v77, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGAA023AccessibilityAttachmentJ0VGMd);
  v68 = v78;
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v65, v78, &_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVG_ACyACyACyACyAA4TextVAA08_PaddingL0VGASGAA06_TraithI0VyAA0l8PriorityoG0VGGAA023AccessibilityAttachmentI0VGtMd);
  outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(v67, v68 + *(v69 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGAA023AccessibilityAttachmentJ0VGMd);
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v64, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGAA023AccessibilityAttachmentJ0VGMd);
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v66, &_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd);
  outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v67, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGAA023AccessibilityAttachmentJ0VGMd);
  return outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(v65, &_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MultisportMedallionView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for MultisportMedallionView(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB019MedallionCircleViewVAA21_TraitWritingModifierVyAA06ZIndexI3KeyVGGMd);
    lazy protocol witness table accessor for type MedallionCircleView and conformance MedallionCircleView();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ZIndexTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA06ZIndexC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MedallionCircleView and conformance MedallionCircleView()
{
  result = lazy protocol witness table cache variable for type MedallionCircleView and conformance MedallionCircleView;
  if (!lazy protocol witness table cache variable for type MedallionCircleView and conformance MedallionCircleView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MedallionCircleView and conformance MedallionCircleView);
  }

  return result;
}

uint64_t outlined init with take of HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA21_TraitWritingModifierVyAA0g8PriorityH3KeyVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LayoutPriorityTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type WorkoutFigure and conformance WorkoutFigure()
{
  result = lazy protocol witness table cache variable for type WorkoutFigure and conformance WorkoutFigure;
  if (!lazy protocol witness table cache variable for type WorkoutFigure and conformance WorkoutFigure)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutFigure and conformance WorkoutFigure);
  }

  return result;
}

uint64_t outlined init with copy of ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized static Log.print(_:type:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 16);
  if (v6 > 3)
  {
    if (v6 > 5)
    {
      if (v6 == 6)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_20CB6DA70;
        outlined init with copy of CVarArg(a5 + 32, v15 + 32);
        outlined init with copy of CVarArg(a5 + 72, v15 + 72);
        outlined init with copy of CVarArg(a5 + 112, v15 + 112);
        outlined init with copy of CVarArg(a5 + 152, v15 + 152);
        outlined init with copy of CVarArg(a5 + 192, v15 + 192);
        v8 = a5 + 232;
        v9 = v15 + 232;
      }

      else
      {
        if (v6 != 7)
        {
          return result;
        }

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_20CB6DA60;
        outlined init with copy of CVarArg(a5 + 32, v12 + 32);
        outlined init with copy of CVarArg(a5 + 72, v12 + 72);
        outlined init with copy of CVarArg(a5 + 112, v12 + 112);
        outlined init with copy of CVarArg(a5 + 152, v12 + 152);
        outlined init with copy of CVarArg(a5 + 192, v12 + 192);
        outlined init with copy of CVarArg(a5 + 232, v12 + 232);
        v8 = a5 + 272;
        v9 = v12 + 272;
      }
    }

    else if (v6 == 4)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_20CB6DA90;
      outlined init with copy of CVarArg(a5 + 32, v13 + 32);
      outlined init with copy of CVarArg(a5 + 72, v13 + 72);
      outlined init with copy of CVarArg(a5 + 112, v13 + 112);
      v8 = a5 + 152;
      v9 = v13 + 152;
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_20CB6DA80;
      outlined init with copy of CVarArg(a5 + 32, v10 + 32);
      outlined init with copy of CVarArg(a5 + 72, v10 + 72);
      outlined init with copy of CVarArg(a5 + 112, v10 + 112);
      outlined init with copy of CVarArg(a5 + 152, v10 + 152);
      v8 = a5 + 192;
      v9 = v10 + 192;
    }

    goto LABEL_36;
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_20CB5DA80;
      outlined init with copy of CVarArg(a5 + 32, v14 + 32);
      v8 = a5 + 72;
      v9 = v14 + 72;
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_20CB5EA80;
      outlined init with copy of CVarArg(a5 + 32, v11 + 32);
      outlined init with copy of CVarArg(a5 + 72, v11 + 72);
      v8 = a5 + 112;
      v9 = v11 + 112;
    }

LABEL_36:
    outlined init with copy of CVarArg(v8, v9);
    os_log(_:dso:log:type:_:)();
  }

  if (v6)
  {
    if (v6 != 1)
    {
      return result;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20CB5DA70;
    v8 = a5 + 32;
    v9 = v7 + 32;
    goto LABEL_36;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:type:_:)();
}

uint64_t outlined init with copy of CVarArg(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t SafetyMonitorManager._mostLikelyReceiverHandle.didset()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.safety.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v8 = 136315650;
    v10 = v5;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v1;
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v23);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000020CB97FD0, &v23);
    *(v8 + 22) = 2112;
    swift_getKeyPath();
    v22 = v10;
    lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = *&v10[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__mostLikelyReceiverHandle];
    *(v8 + 24) = v16;
    *v9 = v16;
    v17 = v16;
    _os_log_impl(&dword_20C66F000, v6, v7, "%s, %s: suggestedRecipient updated to %@", v8, 0x20u);
    _sSo8NSObjectCSgWOhTm_2(v9, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v9, -1, -1);
    v18 = v21;
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v18, -1, -1);
    MEMORY[0x20F30E080](v8, -1, -1);

    return (*(v2 + 8))(v4, v20);
  }

  else
  {

    return (*(v2 + 8))(v4, v1);
  }
}

void *SafetyMonitorManager.mostLikelyReceiverHandle.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__mostLikelyReceiverHandle);
  v2 = v1;
  return v1;
}

void SafetyMonitorManager.mostLikelyReceiverHandle.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__mostLikelyReceiverHandle;
  v4 = *(v1 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__mostLikelyReceiverHandle);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for SMHandle();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v10 = v6;

  SafetyMonitorManager._mostLikelyReceiverHandle.didset();
}

uint64_t SafetyMonitorManager.sessionID.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionID;
  swift_beginAccess();
  return outlined init with copy of UUID?(v5 + v3, a1);
}

uint64_t SafetyMonitorManager.sessionID.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionID;
  swift_beginAccess();
  outlined init with copy of UUID?(v1 + v6, v5);
  v7 = specialized SafetyMonitorManager.shouldNotifyObservers<A>(_:_:)(v5, a1);
  _sSo8NSObjectCSgWOhTm_2(v5, &_s10Foundation4UUIDVSgMd);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    outlined init with copy of UUID?(a1, v5);
    swift_beginAccess();
    outlined assign with take of UUID?(v5, v1 + v6);
    swift_endAccess();
  }

  return _sSo8NSObjectCSgWOhTm_2(a1, &_s10Foundation4UUIDVSgMd);
}

uint64_t closure #1 in SafetyMonitorManager.sessionID.setter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of UUID?(a2, &v9 - v5);
  v7 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionID;
  swift_beginAccess();
  outlined assign with take of UUID?(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t SafetyMonitorManager.hasActiveSession.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession);
}

uint64_t key path getter for SafetyMonitorManager.hasActiveSession : SafetyMonitorManager@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession);
  return result;
}

uint64_t SafetyMonitorManager.hasActiveSession.setter(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t SafetyMonitorManager.sessionStartEntryTypeForMetric.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionStartEntryTypeForMetric);
}

uint64_t key path getter for SafetyMonitorManager.sessionStartEntryTypeForMetric : SafetyMonitorManager@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionStartEntryTypeForMetric);
  return result;
}

uint64_t SafetyMonitorManager.sessionStartEntryTypeForMetric.setter(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionStartEntryTypeForMetric) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

NSObject *SafetyMonitorManager.init()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager_sessionDetailsHandlerManager;
  type metadata accessor for HandlerManager();
  swift_allocObject();
  *&v0[v4] = HandlerManager.init()();
  *&v0[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__mostLikelyReceiverHandle] = 0;
  v5 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionID;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);
  v7(&v1[v5], 1, 1, v6);
  v7(&v1[v5], 1, 1, v6);
  v1[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession] = 0;
  *&v1[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionStartEntryTypeForMetric] = 0;
  v8 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager_manager;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277D4AB68]) init];
  ObservationRegistrar.init()();
  v9 = type metadata accessor for SafetyMonitorManager();
  v47.receiver = v1;
  v47.super_class = v9;
  v10 = objc_msgSendSuper2(&v47, sel_init);
  *(swift_allocObject() + 16) = v10;
  v11 = v10;

  dispatch thunk of HandlerManager.initiatorEndSessionHandler.setter();

  *(swift_allocObject() + 16) = v11;
  v12 = v11;

  dispatch thunk of HandlerManager.safeResponseToTriggerPrompt.setter();

  *(swift_allocObject() + 16) = v12;
  v13 = v12;

  dispatch thunk of HandlerManager.stageMessageHandler.setter();

  *(swift_allocObject() + 16) = v13;
  v14 = v13;

  dispatch thunk of HandlerManager.resizeViewHandler.setter();

  v15 = [objc_allocWithZone(MEMORY[0x277D4AB18]) initWithRequireEligibility:1 requireContact:1 requireNonBlockedContact:1 requireOnlyFavoritedHandles:1 requireOnlyPastSessionRecipients:1];
  v16 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager_manager;
  v17 = *&v14[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager_manager];
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  v45 = partial apply for closure #1 in SafetyMonitorManager.init();
  v46 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = thunk for @escaping @callee_guaranteed (@guaranteed [SMHandle]?, @guaranteed Error?) -> ();
  v44 = &block_descriptor_71;
  v19 = _Block_copy(&aBlock);
  v20 = v14;
  v21 = v17;

  [v21 fetchMostLikelyReceiverHandlesWithOptions:v15 handler:v19];
  _Block_release(v19);

  v22 = *&v14[v16];
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  v45 = partial apply for closure #2 in SafetyMonitorManager.init();
  v46 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = thunk for @escaping @callee_guaranteed (@guaranteed SMSessionManagerState?, @unowned Bool, @guaranteed Error?) -> ();
  v44 = &block_descriptor_77;
  v24 = _Block_copy(&aBlock);
  v25 = v20;
  v26 = v22;

  [v26 fetchCurrentSessionStateWithHandler_];
  _Block_release(v24);

  v27 = *&v14[v16];
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  v45 = partial apply for closure #3 in SafetyMonitorManager.init();
  v46 = v28;
  v29 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = thunk for @escaping @callee_guaranteed (@guaranteed SMSessionManagerState?, @unowned Bool, @guaranteed Error?) -> ();
  v44 = &block_descriptor_83;
  v30 = _Block_copy(&aBlock);
  v31 = v27;

  [v31 startMonitoringSessionStateWithHandler_];
  _Block_release(v30);

  static WOLog.safety.getter();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_20C66F000, v32, v33, "[SafetyCheckIn] started monitoring session state", v34, 2u);
    MEMORY[0x20F30E080](v34, -1, -1);
    v35 = v25;
  }

  else
  {
    v35 = v32;
    v32 = v15;
    v15 = v25;
  }

  (*(v39 + 8))(v29, v40);
  return v25;
}

void closure #1 in SafetyMonitorManager.init()(unint64_t a1, void *a2, void *a3)
{
  v47 = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  static WOLog.safety.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v12, v13))
  {

    v19 = v6[1];
    v19(v11, v5);
    if (!a2)
    {
      goto LABEL_16;
    }

LABEL_10:
    static WOLog.safety.getter();
    v20 = v47;
    v21 = a2;
    v22 = Logger.logObject.getter();
    v23 = a2;
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v24))
    {
      v25 = swift_slowAlloc();
      v45 = v8;
      v26 = v25;
      v27 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v49 = v44;
      *v26 = 136315650;
      v28 = v20;
      v47 = v6;
      v29 = v28;
      v30 = [v28 description];
      v46 = v5;
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v49);

      *(v26 + 4) = v35;
      *(v26 + 12) = 2080;
      *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x292874696E69, 0xE600000000000000, &v49);
      *(v26 + 22) = 2112;
      v36 = v23;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 24) = v37;
      *v27 = v37;
      _os_log_impl(&dword_20C66F000, v22, v24, "%s, %s: error during receiver fetch, %@", v26, 0x20u);
      _sSo8NSObjectCSgWOhTm_2(v27, &_sSo8NSObjectCSgMd);
      MEMORY[0x20F30E080](v27, -1, -1);
      v38 = v44;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v38, -1, -1);
      MEMORY[0x20F30E080](v26, -1, -1);

      v19(v45, v46);
    }

    else
    {

      v19(v8, v5);
    }

    return;
  }

  v44 = a2;
  v45 = v8;
  v14 = v6;
  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v49 = v16;
  *v15 = 136315138;
  v46 = v5;
  if (!a1)
  {
    goto LABEL_14;
  }

  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_5;
    }

LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x20F30C990](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v17 = *(a1 + 32);
  }

  v18 = v17;
LABEL_15:
  v48 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8SMHandleCSgMd);
  v39 = Optional.description.getter();
  v41 = v40;

  v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v49);

  *(v15 + 4) = v42;
  _os_log_impl(&dword_20C66F000, v12, v13, "[SafetyCheckIn] fetched most likely receiver: %s", v15, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v16);
  MEMORY[0x20F30E080](v16, -1, -1);
  MEMORY[0x20F30E080](v15, -1, -1);

  v6 = v14;
  v19 = v14[1];
  v5 = v46;
  v19(v11, v46);
  a2 = v44;
  v8 = v45;
  if (v44)
  {
    goto LABEL_10;
  }

LABEL_16:
  if (!a1)
  {
    v43 = 0;
    goto LABEL_23;
  }

  if (a1 >> 62)
  {
    v43 = __CocoaSet.count.getter();
    if (!v43)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v43)
    {
LABEL_23:
      SafetyMonitorManager.mostLikelyReceiverHandle.setter(v43);
      return;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_28:
    v43 = MEMORY[0x20F30C990](0, a1);
    goto LABEL_23;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v43 = *(a1 + 32);
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [SMHandle]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for SMHandle();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

id closure #2 in SafetyMonitorManager.init()(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v87 = a4;
  v6 = type metadata accessor for UUID();
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x28223BE20](v6);
  v81 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v82 = &v78 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v83);
  v80 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v78 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v90 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v78 - v18;
  static WOLog.safety.getter();
  v20 = a1;
  v21 = a3;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = v20;

  v25 = v23;
  v26 = os_log_type_enabled(v22, v23);
  v88 = v15;
  v89 = v14;
  v86 = a1;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v92 = v79;
    *v27 = 136315650;
    if (a1)
    {
      v29 = v24;
      v30 = [v24 isActiveState];
    }

    else
    {
      v30 = 2;
      v29 = v24;
    }

    v91 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
    v33 = Optional.description.getter();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v92);

    *(v27 + 4) = v35;
    *(v27 + 12) = 2080;
    if (v86 && (v36 = [v29 configuration]) != 0)
    {
      v37 = v36;
      v38 = [v36 sessionID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    (*(v84 + 56))(v13, v39, 1, v85);
    v40 = Optional.description.getter();
    v42 = v41;
    _sSo8NSObjectCSgWOhTm_2(v13, &_s10Foundation4UUIDVSgMd);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v92);

    *(v27 + 14) = v43;
    *(v27 + 22) = 2112;
    if (a3)
    {
      v44 = a3;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      v46 = v45;
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }

    v47 = v88;
    *(v27 + 24) = v45;
    *v28 = v46;
    _os_log_impl(&dword_20C66F000, v22, v25, "[SafetyCheckIn] fetched current session state (isActiveState: %s, sessionID:  %s, error: %@)", v27, 0x20u);
    _sSo8NSObjectCSgWOhTm_2(v28, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v28, -1, -1);
    v48 = v79;
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v48, -1, -1);
    MEMORY[0x20F30E080](v27, -1, -1);

    v31 = *(v47 + 8);
    result = v31(v19, v89);
  }

  else
  {

    v31 = *(v15 + 8);
    result = v31(v19, v14);
    v29 = v24;
  }

  v49 = v87;
  v50 = v90;
  if (a3)
  {
    static WOLog.safety.getter();
    v51 = a3;
    v52 = v49;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v92 = v87;
      *v55 = 136315650;
      v57 = v52;
      v58 = [v57 description];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v92);

      *(v55 + 4) = v62;
      *(v55 + 12) = 2080;
      *(v55 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x292874696E69, 0xE600000000000000, &v92);
      *(v55 + 22) = 2112;
      v63 = a3;
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 24) = v64;
      *v56 = v64;
      _os_log_impl(&dword_20C66F000, v53, v54, "%s, %s: error during session state fetch, %@", v55, 0x20u);
      _sSo8NSObjectCSgWOhTm_2(v56, &_sSo8NSObjectCSgMd);
      MEMORY[0x20F30E080](v56, -1, -1);
      v65 = v87;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v65, -1, -1);
      MEMORY[0x20F30E080](v55, -1, -1);

      v66 = v90;
    }

    else
    {

      v66 = v50;
    }

    return v31(v66, v89);
  }

  else if (v86)
  {
    v67 = [v29 configuration];
    if (v67)
    {
      v68 = v67;
      v69 = [v67 sessionID];

      v70 = v81;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v71 = v84;
      v72 = v82;
      v73 = v70;
      v74 = v85;
      (*(v84 + 32))(v82, v73, v85);
      v75 = v80;
      (*(v71 + 16))(v80, v72, v74);
      (*(v71 + 56))(v75, 0, 1, v74);
      SafetyMonitorManager.sessionID.setter(v75);
      (*(v71 + 8))(v72, v74);
    }

    result = [v29 isActiveState];
    v76 = result;
    if (result == v49[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession])
    {
      v49[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession] = result;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v78 - 2) = v49;
      *(&v78 - 8) = v76;
      v92 = v49;
      lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed SMSessionManagerState?, @unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

id closure #3 in SafetyMonitorManager.init()(void *a1, int a2, void *a3, uint64_t a4)
{
  v58 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v62);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = &v54 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.safety.getter();
  v15 = a1;
  v16 = a3;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v64 = v15;

  v60 = a3;
  v61 = v18;
  v19 = os_log_type_enabled(v17, v18);
  v63 = a1;
  if (v19)
  {
    v55 = v17;
    v20 = v12;
    v57 = a4;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v66 = v23;
    *v21 = 136315906;
    v56 = v8;
    if (a1)
    {
      v24 = [v64 isActiveState];
    }

    else
    {
      v24 = 2;
    }

    v26 = v59;
    v65 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
    v27 = Optional.description.getter();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v66);

    *(v21 + 4) = v29;
    *(v21 + 12) = 1024;
    *(v21 + 14) = v58 & 1;
    *(v21 + 18) = 2080;
    v30 = v20;
    if (v63)
    {
      v31 = [v64 configuration];
      v32 = v55;
      if (v31)
      {
        v33 = v31;
        v34 = [v31 sessionID];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = 0;
      }

      else
      {
        v35 = 1;
      }
    }

    else
    {
      v35 = 1;
      v32 = v55;
    }

    v36 = type metadata accessor for UUID();
    (*(*(v36 - 8) + 56))(v26, v35, 1, v36);
    v37 = Optional.description.getter();
    v39 = v38;
    _sSo8NSObjectCSgWOhTm_2(v26, &_s10Foundation4UUIDVSgMd);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v66);

    *(v21 + 20) = v40;
    *(v21 + 28) = 2112;
    if (v60)
    {
      v41 = v60;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      v43 = v42;
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

    v8 = v56;
    *(v21 + 30) = v42;
    *v22 = v43;
    _os_log_impl(&dword_20C66F000, v32, v61, "[SafetyCheckIn] session monitor changed state (isActiveState: %s, isActiveDevice: %{BOOL}d, sessionID:  %s, error: %@)", v21, 0x26u);
    _sSo8NSObjectCSgWOhTm_2(v22, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v22, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v23, -1, -1);
    MEMORY[0x20F30E080](v21, -1, -1);

    (*(v30 + 8))(v14, v11);
    a4 = v57;
    v25 = v63;
    if (!v63)
    {
      goto LABEL_18;
    }
  }

  else
  {

    (*(v12 + 8))(v14, v11);
    v25 = v63;
    if (!v63)
    {
      goto LABEL_18;
    }
  }

  v44 = [v64 configuration];
  if (v44)
  {
    v45 = v8;
    v46 = v44;
    v47 = [v44 sessionID];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = type metadata accessor for UUID();
    (*(*(v48 - 8) + 56))(v45, 0, 1, v48);
    SafetyMonitorManager.sessionID.setter(v45);
    goto LABEL_19;
  }

LABEL_18:
  v49 = type metadata accessor for UUID();
  (*(*(v49 - 8) + 56))(v8, 1, 1, v49);
  result = SafetyMonitorManager.sessionID.setter(v8);
  if (!v25)
  {
    v51 = 0;
    v52 = (a4 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession);
    if (*(a4 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession))
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

LABEL_19:
  result = [v64 isActiveState];
  v51 = result;
  v52 = (a4 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession);
  if (result != *(a4 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__hasActiveSession))
  {
LABEL_20:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v54 - 2) = a4;
    *(&v54 - 8) = v51;
    v66 = a4;
    lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

LABEL_22:
  *v52 = v51;
  return result;
}

id SafetyMonitorManager.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager_manager];
  aBlock[4] = closure #1 in SafetyMonitorManager.deinit;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_12;
  v2 = _Block_copy(aBlock);
  v3 = v1;
  [v3 stopMonitoringSessionStateWithHandler_];
  _Block_release(v2);

  v5.receiver = v0;
  v5.super_class = type metadata accessor for SafetyMonitorManager();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t closure #1 in SafetyMonitorManager.deinit(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.safety.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    if (a1)
    {
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v9 + 4) = v12;
    *v10 = v13;
    _os_log_impl(&dword_20C66F000, v7, v8, "[SafetyCheckIn] stopped monitoring session state, error: %@", v9, 0xCu);
    _sSo8NSObjectCSgWOhTm_2(v10, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v10, -1, -1);
    MEMORY[0x20F30E080](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for SafetyMonitorManager()
{
  result = type metadata singleton initialization cache for SafetyMonitorManager;
  if (!type metadata singleton initialization cache for SafetyMonitorManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SafetyMonitorManager.submitCheckInRemindersResponseMetric(reason:workoutActivityType:)()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionStartEntryTypeForMetric;
  v3 = *(v0 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionStartEntryTypeForMetric);
  if (v3 == 9)
  {
    type metadata accessor for MetricsManager();
    result = static MetricsManager.submitWorkoutAlwaysPromptResponse(reason:workoutActivityType:)();
    v3 = *(v0 + v2);
  }

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v0 + v2) = 0;
  }

  return result;
}

uint64_t SafetyMonitorManager.initiatorEndSessionHandler()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.safety.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v8 = 136315394;
    v9 = v5;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v1;
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v21);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x800000020CB980E0, &v21);
    _os_log_impl(&dword_20C66F000, v6, v7, "%s, %s: end session", v8, 0x16u);
    v15 = v20;
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v15, -1, -1);
    MEMORY[0x20F30E080](v8, -1, -1);

    (*(v2 + 8))(v4, v19);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  type metadata accessor for SessionViewModel();
  static SessionViewModel.shared.getter();
  *(swift_allocObject() + 16) = v5;
  v16 = v5;
  SessionViewModel.endSession(with:)();
}

void closure #1 in SafetyMonitorManager.initiatorEndSessionHandler()(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    static WOLog.safety.getter();
    v9 = a1;
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v27 = v4;
      v14 = v13;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28 = v26;
      *v14 = 136315650;
      v15 = v10;
      v16 = [v15 description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v28);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2080;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x800000020CB980E0, &v28);
      *(v14 + 22) = 2112;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v22;
      v23 = v25;
      *v25 = v22;
      _os_log_impl(&dword_20C66F000, v11, v12, "%s, %s: end session error, %@", v14, 0x20u);
      _sSo8NSObjectCSgWOhTm_2(v23, &_sSo8NSObjectCSgMd);
      MEMORY[0x20F30E080](v23, -1, -1);
      v24 = v26;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v24, -1, -1);
      MEMORY[0x20F30E080](v14, -1, -1);

      (*(v5 + 8))(v7, v27);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t SafetyMonitorManager.safeResponseToTriggerPromptHandler()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.safety.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v8 = 136315394;
    v9 = v5;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v1;
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v21);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000020CB980B0, &v21);
    _os_log_impl(&dword_20C66F000, v6, v7, "%s, %s: safe response to trigger prompt", v8, 0x16u);
    v15 = v20;
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v15, -1, -1);
    MEMORY[0x20F30E080](v8, -1, -1);

    (*(v2 + 8))(v4, v19);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  type metadata accessor for SessionViewModel();
  static SessionViewModel.shared.getter();
  *(swift_allocObject() + 16) = v5;
  v16 = v5;
  SessionViewModel.safeResponseToTriggerPrompt(with:)();
}

void closure #1 in SafetyMonitorManager.safeResponseToTriggerPromptHandler()(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    static WOLog.safety.getter();
    v9 = a1;
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v27 = v4;
      v14 = v13;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28 = v26;
      *v14 = 136315650;
      v15 = v10;
      v16 = [v15 description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v28);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2080;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000020CB980B0, &v28);
      *(v14 + 22) = 2112;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v22;
      v23 = v25;
      *v25 = v22;
      _os_log_impl(&dword_20C66F000, v11, v12, "%s, %s: safe response to trigger prompt error, %@", v14, 0x20u);
      _sSo8NSObjectCSgWOhTm_2(v23, &_sSo8NSObjectCSgMd);
      MEMORY[0x20F30E080](v23, -1, -1);
      v24 = v26;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v24, -1, -1);
      MEMORY[0x20F30E080](v14, -1, -1);

      (*(v5 + 8))(v7, v27);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t SafetyMonitorManager.stageMessageHandler()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.safety.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18 = v1;
    v9 = v8;
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    v11 = v5;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v19);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000020CB98090, &v19);
    _os_log_impl(&dword_20C66F000, v6, v7, "%s, %s: stage message", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v10, -1, -1);
    MEMORY[0x20F30E080](v9, -1, -1);

    return (*(v2 + 8))(v4, v18);
  }

  else
  {

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t SafetyMonitorManager.resizeViewHandler()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.safety.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18 = v1;
    v9 = v8;
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    v11 = v5;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v19);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000020CB98070, &v19);
    _os_log_impl(&dword_20C66F000, v6, v7, "%s, %s: resize view", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v10, -1, -1);
    MEMORY[0x20F30E080](v9, -1, -1);

    return (*(v2 + 8))(v4, v18);
  }

  else
  {

    return (*(v2 + 8))(v4, v1);
  }
}

id SafetyMonitorManager.messageComposeViewController(_:didFinishWith:)(void *a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager_manager];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  v17 = partial apply for closure #1 in SafetyMonitorManager.messageComposeViewController(_:didFinishWith:);
  v18 = v6;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed (@guaranteed SMSessionManagerState?, @unowned Bool, @guaranteed Error?) -> ();
  v16 = &block_descriptor_3;
  v7 = _Block_copy(&v13);
  v8 = v2;

  [v5 fetchCurrentSessionStateWithHandler_];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a2;
  v17 = partial apply for closure #2 in SafetyMonitorManager.messageComposeViewController(_:didFinishWith:);
  v18 = v9;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SMCurrentWorkoutSnapshot?, @guaranteed Error?) -> ();
  v16 = &block_descriptor_9;
  v10 = _Block_copy(&v13);
  v11 = v8;

  [v5 fetchCurrentWorkoutSnapshotWithCompletion_];
  _Block_release(v10);
  return [a1 dismissViewControllerAnimated:1 completion:0];
}

void closure #1 in SafetyMonitorManager.messageComposeViewController(_:didFinishWith:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    static WOLog.safety.getter();
    v15 = a4;
    v16 = a3;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v19 = 136315650;
      v20 = v15;
      v21 = [v20 description];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v10;
      v23 = v22;
      v25 = v24;

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v38);

      *(v19 + 4) = v26;
      *(v19 + 12) = 2080;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x800000020CB98120, &v38);
      *(v19 + 22) = 2112;
      v27 = a3;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v28;
      v29 = v35;
      *v35 = v28;
      _os_log_impl(&dword_20C66F000, v17, v18, "%s, %s: error during session state fetch, %@", v19, 0x20u);
      _sSo8NSObjectCSgWOhTm_2(v29, &_sSo8NSObjectCSgMd);
      MEMORY[0x20F30E080](v29, -1, -1);
      v30 = v37;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v30, -1, -1);
      MEMORY[0x20F30E080](v19, -1, -1);

      (*(v11 + 8))(v14, v36);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }
  }

  else if (a1)
  {
    v31 = [a1 configuration];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 sessionID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = type metadata accessor for UUID();
      (*(*(v34 - 8) + 56))(v9, 0, 1, v34);
      SafetyMonitorManager.sessionID.setter(v9);
    }
  }
}

void closure #2 in SafetyMonitorManager.messageComposeViewController(_:didFinishWith:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v54 = type metadata accessor for CheckInControllerDismissalReason();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v44 - v12;
  v14 = type metadata accessor for Logger();
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if (a1)
    {
      [a1 activityType];
      if (a4)
      {
        goto LABEL_9;
      }
    }

    else if (a4)
    {
      goto LABEL_9;
    }

LABEL_13:
    v42 = MEMORY[0x277D4AF48];
    goto LABEL_14;
  }

  v52 = v15;
  v53 = a4;
  static WOLog.safety.getter();
  v19 = a3;
  v20 = a2;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  v51 = v22;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v49 = v13;
    v24 = v23;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v55[0] = v47;
    *v24 = 136315650;
    v25 = v19;
    v26 = [v25 description];
    v48 = v14;
    v27 = a3;
    v28 = v26;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v21;
    v30 = v29;
    v50 = v8;
    v32 = v31;

    a3 = v27;
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v55);
    v8 = v50;

    *(v24 + 4) = v33;
    *(v24 + 12) = 2080;
    *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x800000020CB98120, v55);
    *(v24 + 22) = 2112;
    v34 = a2;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 24) = v35;
    v37 = v45;
    v36 = v46;
    *v46 = v35;
    _os_log_impl(&dword_20C66F000, v37, v51, "%s, %s: error during workout snapshot fetch, %@", v24, 0x20u);
    _sSo8NSObjectCSgWOhTm_2(v36, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v36, -1, -1);
    v38 = v47;
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v38, -1, -1);
    v39 = v24;
    v13 = v49;
    MEMORY[0x20F30E080](v39, -1, -1);

    (*(v52 + 8))(v18, v48);
  }

  else
  {

    (*(v52 + 8))(v18, v14);
  }

  a4 = v53;
  if (!v53)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (a4 == 1)
  {
    swift_getKeyPath();
    v55[0] = a3;
    lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type SafetyMonitorManager and conformance SafetyMonitorManager, type metadata accessor for SafetyMonitorManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v40 = OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__sessionID;
    swift_beginAccess();
    outlined init with copy of UUID?(a3 + v40, v13);
    v41 = type metadata accessor for UUID();
    LODWORD(v40) = (*(*(v41 - 8) + 48))(v13, 1, v41);
    _sSo8NSObjectCSgWOhTm_2(v13, &_s10Foundation4UUIDVSgMd);
    if (v40 != 1)
    {
      v42 = MEMORY[0x277D4AF50];
LABEL_14:
      v43 = v54;
      (*(v8 + 104))(v10, *v42, v54);
      SafetyMonitorManager.submitCheckInRemindersResponseMetric(reason:workoutActivityType:)();
      (*(v8 + 8))(v10, v43);
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SMCurrentWorkoutSnapshot?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void type metadata completion function for SafetyMonitorManager()
{
  type metadata accessor for UUID?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for UUID?()
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UUID?);
    }
  }
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized SafetyMonitorManager.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of UUID?(a1, &v21 - v13);
  outlined init with copy of UUID?(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    outlined init with copy of UUID?(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      _sSo8NSObjectCSgWOhTm_2(v14, &_s10Foundation4UUIDVSgMd);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    _sSo8NSObjectCSgWOhTm_2(v14, &_s10Foundation4UUIDVSg_ADtMd);
    v17 = 1;
    return v17 & 1;
  }

  _sSo8NSObjectCSgWOhTm_2(v14, &_s10Foundation4UUIDVSgMd);
  v17 = 0;
  return v17 & 1;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _sSo8NSObjectCSgWOhTm_2(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type SafetyMonitorManager and conformance SafetyMonitorManager(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in SafetyMonitorManager.mostLikelyReceiverHandle.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__mostLikelyReceiverHandle);
  *(v2 + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager__mostLikelyReceiverHandle) = v1;
  v4 = v1;

  return SafetyMonitorManager._mostLikelyReceiverHandle.didset();
}

unint64_t type metadata accessor for SMHandle()
{
  result = lazy cache variable for type metadata for SMHandle;
  if (!lazy cache variable for type metadata for SMHandle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SMHandle);
  }

  return result;
}

void closure #1 in SafetyMonitorManager.hasActiveSession.setterpartial apply()
{
  partial apply for closure #1 in SafetyMonitorManager.hasActiveSession.setter();
}

{
  partial apply for closure #1 in SafetyMonitorManager.hasActiveSession.setter();
}

double NLWorkoutSplitStorage.defaultTargetValue(activityType:)(void *a1)
{
  v3 = [v1 type];
  v4 = [a1 effectiveTypeIdentifier];
  if (v3 == 2)
  {
    result = 600.0;
    if (v4 <= 51)
    {
      if (v4 == 13)
      {
        return result;
      }

      if (v4 == 24)
      {
        return 1800.0;
      }

      return 300.0;
    }

    if (v4 != 52 && v4 != 70)
    {
      return 300.0;
    }
  }

  else if (v4 == 37 && ![a1 isIndoor])
  {
    return 1609.34;
  }

  else if ([a1 effectiveTypeIdentifier] == 13 && !objc_msgSend(a1, sel_isIndoor))
  {
    return 8046.72;
  }

  else
  {
    return 0.0;
  }

  return result;
}

double static HeartRateZone.defaultLowRangeValue(activityType:)(void *a1)
{
  v1 = [a1 effectiveTypeIdentifier];
  v2 = v1 == 37 || v1 == 13;
  result = 120.0;
  if (v2)
  {
    return 130.0;
  }

  return result;
}

double static HeartRateZone.defaultUpperRangeValue(activityType:)(void *a1)
{
  v1 = [a1 effectiveTypeIdentifier];
  v2 = v1 == 37 || v1 == 13;
  result = 140.0;
  if (v2)
  {
    return 150.0;
  }

  return result;
}

id TargetZone.ZoneType.defaultLowRangeValue(activityType:)(void *a1)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3, v5);
  result = (*(v4 + 88))(v7, v3);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return [a1 effectiveTypeIdentifier];
  }

  if (result == *MEMORY[0x277D7DE70] || result == *MEMORY[0x277D7DE58])
  {
    return [a1 effectiveTypeIdentifier];
  }

  v12 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
  if (!v12 && result != *MEMORY[0x277D7DE78])
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id TargetZone.ZoneType.defaultUpperRangeValue(activityType:)(void *a1)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3, v5);
  result = (*(v4 + 88))(v7, v3);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return [a1 effectiveTypeIdentifier];
  }

  if (result == *MEMORY[0x277D7DE70] || result == *MEMORY[0x277D7DE58])
  {
    return [a1 effectiveTypeIdentifier];
  }

  v12 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
  if (!v12 && result != *MEMORY[0x277D7DE78])
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id TargetZone.ZoneType.defaultTargetValue(activityType:)(void *a1)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3, v5);
  result = (*(v4 + 88))(v7, v3);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return [a1 effectiveTypeIdentifier];
  }

  if (result == *MEMORY[0x277D7DE70] || result == *MEMORY[0x277D7DE58])
  {
    return [a1 effectiveTypeIdentifier];
  }

  v12 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
  if (!v12 && result != *MEMORY[0x277D7DE78])
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t key path getter for TrainingLoadEffortExplanationView.onNext : TrainingLoadEffortExplanationView@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for TrainingLoadEffortExplanationView() + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = _sIeg_ytIegr_TRTA_0;
  a2[1] = v6;
}

uint64_t key path setter for TrainingLoadEffortExplanationView.onNext : TrainingLoadEffortExplanationView(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for TrainingLoadEffortExplanationView() + 20));

  *v6 = _sytIegr_Ieg_TRTA_0;
  v6[1] = v5;
  return result;
}

uint64_t TrainingLoadEffortExplanationView.onNext.getter()
{
  v1 = *(v0 + *(type metadata accessor for TrainingLoadEffortExplanationView() + 20));

  return v1;
}

uint64_t type metadata accessor for TrainingLoadEffortExplanationView()
{
  result = type metadata singleton initialization cache for TrainingLoadEffortExplanationView;
  if (!type metadata singleton initialization cache for TrainingLoadEffortExplanationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TrainingLoadEffortExplanationView.onNext.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TrainingLoadEffortExplanationView() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TrainingLoadEffortExplanationView.isStandalone.setter(char a1)
{
  result = type metadata accessor for TrainingLoadEffortExplanationView();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t TrainingLoadEffortExplanationView.init(isStandalone:onNext:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  EffortExplanationView = type metadata accessor for TrainingLoadEffortExplanationView();
  *(a4 + EffortExplanationView[6]) = a1;
  v9 = (a4 + EffortExplanationView[5]);
  *v9 = a2;
  v9[1] = a3;
  result = FIShouldTrackTrainingLoad();
  v11 = a4 + EffortExplanationView[7];
  *v11 = result;
  *(v11 + 1) = 0;
  return result;
}

uint64_t TrainingLoadEffortExplanationView.message.getter()
{
  if (*(v0 + *(type metadata accessor for TrainingLoadEffortExplanationView() + 24)) == 1)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = WorkoutUIBundle.super.isa;
    v9 = 0xE000000000000000;
    v2 = 0xD00000000000003ELL;
    v3 = 0x800000020CB98410;
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = WorkoutUIBundle.super.isa;
    v9 = 0xE000000000000000;
    v3 = 0x800000020CB983D0;
    v2 = 0xD000000000000033;
  }

  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, v4, v1, v5, *(&v9 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

__n128 TrainingLoadEffortExplanationView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v48 = a1;
  EffortExplanationView = type metadata accessor for TrainingLoadEffortExplanationView();
  v3 = *(EffortExplanationView - 8);
  v42 = EffortExplanationView - 8;
  v44 = v3;
  MEMORY[0x28223BE20](EffortExplanationView - 8);
  v45 = v4;
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA05TupleD0Vy07WorkoutB026TrainingLoadOnboardingCoreV_AA15ModifiedContentVyAJyAJyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAA14_PaddingLayoutVGATGAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAJyAJyAJyAJyAJyAJyAJyAA6ToggleVyALGATGATGANyAA4FontVSgGGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_l9ShapeKindQ0VyA19_GGATG_SbQo_AJyAJyAJyAlTGAQGATGtGGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA06ScrollG0VyAGy07WorkoutB026TrainingLoadOnboardingCoreV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA14_PaddingLayoutVGAVGAA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyACyACyACyACyACyACyAA6ToggleVyANGAVGAVGAPyAA4FontVSgGGAA016_BackgroundStyleR0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindR0VyA21_GGAVG_SbQo_ACyACyACyAnVGASGAVGtGG_AA6SpacerVtGGAA06_InsetgR0VyAJ0jkL6ButtonVGGMd);
  MEMORY[0x28223BE20](v43);
  v13 = &v41 - v12;
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA06ScrollD0VyAIy07WorkoutB026TrainingLoadOnboardingCoreV_AA15ModifiedContentVyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Q9AlignmentOGGAA08_PaddingG0VGAZGAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAPyAPyAPyAPyAPyAPyAPyAA6ToggleVyARGAZGAZGATyAA4FontVSgGGAA016_BackgroundStyleU0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_p9ShapeKindU0VyA25_GGAZG_SbQo_APyAPyAPyArZGAWGAZGtGG_AA6SpacerVtGGMd) + 44);
  v47 = v13;
  v15 = &v13[v14];
  v49 = v1;
  static Axis.Set.vertical.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB026TrainingLoadOnboardingCoreV_AA15ModifiedContentVyAHyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA14_PaddingLayoutVGARGAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAHyAHyAHyAHyAHyAHyAHyAA6ToggleVyAJGARGARGALyAA4FontVSgGGAA016_BackgroundStyleP0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_k9ShapeKindP0VyA17_GGARG_SbQo_AHyAHyAHyAjRGAOGARGtGMd);
  lazy protocol witness table accessor for type TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB026TrainingLoadOnboardingCoreV_AA15ModifiedContentVyAHyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA14_PaddingLayoutVGARGAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAHyAHyAHyAHyAHyAHyAHyAA6ToggleVyAJGARGARGALyAA4FontVSgGGAA016_BackgroundStyleP0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_k9ShapeKindP0VyA17_GGARG_SbQo_AHyAHyAHyAjRGAOGARGtGMd);
  ScrollView.init(_:showsIndicators:content:)();
  v16 = *(v6 + 16);
  v16(v8, v11, v5);
  v16(v15, v8, v5);
  v17 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA05TupleD0Vy07WorkoutB026TrainingLoadOnboardingCoreV_AA15ModifiedContentVyAJyAJyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAA14_PaddingLayoutVGATGAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAJyAJyAJyAJyAJyAJyAJyAA6ToggleVyALGATGATGANyAA4FontVSgGGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_l9ShapeKindQ0VyA19_GGATG_SbQo_AJyAJyAJyAlTGAQGATGtGG_AA6SpacerVtMd) + 48)];
  *v17 = 0;
  v17[8] = 1;
  v18 = *(v6 + 8);
  v18(v11, v5);
  v18(v8, v5);
  v19 = static HorizontalAlignment.center.getter();
  v20 = *(v1 + *(v42 + 32));
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  v21 = v20 == 0;
  if (v20)
  {
    v22 = 0xEB000000004E4F54;
  }

  else
  {
    v22 = 0x800000020CB98270;
  }

  if (v21)
  {
    v23 = 0xD00000000000002FLL;
  }

  else
  {
    v23 = 0x5455425F454E4F44;
  }

  swift_beginAccess();
  v24 = WorkoutUIBundle.super.isa;
  v58._object = 0xE000000000000000;
  v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v25.value._object = 0xEB00000000656C62;
  v26._countAndFlagsBits = v23;
  v26._object = v22;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v58._countAndFlagsBits = 0;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v25, v24, v27, v58);

  v29 = v46;
  outlined init with copy of TrainingLoadEffortExplanationView(v1, v46, type metadata accessor for TrainingLoadEffortExplanationView);
  v30 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v31 = swift_allocObject();
  outlined init with take of TrainingLoadEffortExplanationView(v29, v31 + v30);
  v32 = VerticalEdge.rawValue.getter();
  LOBYTE(v29) = MEMORY[0x20F309EB0]((2 * v32));
  v33 = static SafeAreaRegions.container.getter();
  v50 = 1;
  v34 = v47;
  v35 = &v47[*(v43 + 36)];
  *v35 = v28;
  *(v35 + 2) = partial apply for closure #1 in closure #2 in TrainingLoadEffortExplanationView.body.getter;
  *(v35 + 3) = v31;
  *(v35 + 4) = v33;
  *(v35 + 5) = 0;
  v35[48] = 1;
  v35[49] = v29;
  *(v35 + 7) = v19;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v36 = v48;
  sub_20C67FBA8(v34, v48);
  v37 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA06ScrollG0VyAGy07WorkoutB026TrainingLoadOnboardingCoreV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA14_PaddingLayoutVGAVGAA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyACyACyACyACyACyACyAA6ToggleVyANGAVGAVGAPyAA4FontVSgGGAA016_BackgroundStyleR0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindR0VyA21_GGAVG_SbQo_ACyACyACyAnVGASGAVGtGG_AA6SpacerVtGGAA06_InsetgR0VyAJ0jkL6ButtonVGGAA010_FlexFrameU0VGMd) + 36);
  v38 = v56;
  *(v37 + 64) = v55;
  *(v37 + 80) = v38;
  *(v37 + 96) = v57;
  v39 = v52;
  *v37 = v51;
  *(v37 + 16) = v39;
  result = v54;
  *(v37 + 32) = v53;
  *(v37 + 48) = result;
  return result;
}

uint64_t closure #1 in closure #1 in TrainingLoadEffortExplanationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v175 = a2;
  EffortExplanationView = type metadata accessor for TrainingLoadEffortExplanationView();
  v4 = *(EffortExplanationView - 8);
  v169 = EffortExplanationView;
  v170 = v4;
  MEMORY[0x28223BE20](EffortExplanationView);
  v171 = v5;
  v172 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindL0VyA1_GGAJGMd);
  MEMORY[0x28223BE20](v174);
  v173 = &v167 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAHyAHyAHyAHyAHyAHyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAOGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_i9ShapeKindQ0VyA6_GGAOG_SbQo_Md);
  v201 = *(v7 - 8);
  v202 = v7;
  MEMORY[0x28223BE20](v7);
  v200 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v204 = &v167 - v10;
  v203 = type metadata accessor for Font.Leading();
  v205 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v190 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v12 - 8);
  OnboardingCore = type metadata accessor for TrainingLoadOnboardingCore();
  MEMORY[0x28223BE20](OnboardingCore);
  v199 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v167 - v16);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = WorkoutUIBundle.super.isa;
  v19._countAndFlagsBits = 0xD000000000000031;
  v276._object = 0xE000000000000000;
  v20.value._object = 0xEB00000000656C62;
  v19._object = 0x800000020CB982D0;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v276._countAndFlagsBits = 0;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v276);

  TrainingLoadEffortExplanationView.message.getter();
  v180 = a1;
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v17->_countAndFlagsBits = 0xD000000000000028;
  v17->_object = 0x800000020CB982A0;
  v17[1] = v22;
  v23 = WorkoutUIBundle.super.isa;
  v277._object = 0xE000000000000000;
  v24._object = 0x800000020CB98310;
  v24._countAndFlagsBits = 0xD000000000000039;
  v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v25.value._object = 0xEB00000000656C62;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v277._countAndFlagsBits = 0;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v277);

  v254 = v27;
  v185 = lazy protocol witness table accessor for type String and conformance String();
  v28 = Text.init<A>(_:)();
  v198 = v17;
  v30 = v29;
  v32 = v31;
  static Font.body.getter();
  v184 = *MEMORY[0x277CE0A10];
  v33 = v205;
  v34 = *(v205 + 104);
  v182 = v205 + 104;
  *v183 = v34;
  v35 = v190;
  v36 = v203;
  v34(v190);
  Font.leading(_:)();

  v37 = *(v33 + 8);
  v205 = v33 + 8;
  v181 = v37;
  v37(v35, v36);
  v38 = Text.font(_:)();
  v40 = v39;
  LOBYTE(v36) = v41;

  outlined consume of Text.Storage(v28, v30, v32 & 1);

  v42 = objc_opt_self();
  v168 = v42;
  v43 = [v42 secondaryLabelColor];
  v254._countAndFlagsBits = Color.init(uiColor:)();
  v44 = Text.foregroundStyle<A>(_:)();
  v195 = v45;
  v196 = v44;
  LOBYTE(v28) = v46;
  v197 = v47;
  outlined consume of Text.Storage(v38, v40, v36 & 1);

  KeyPath = swift_getKeyPath();
  v194 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v178 = v49;
  v179 = v48;
  v176 = v51;
  v177 = v50;
  v191 = v28 & 1;
  LOBYTE(v232._countAndFlagsBits) = v28 & 1;
  LOBYTE(v224) = 0;
  v192 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v188 = v53;
  v189 = v52;
  v186 = v55;
  v187 = v54;
  LOBYTE(v254._countAndFlagsBits) = 0;
  v56 = WorkoutUIBundle.super.isa;
  v57._countAndFlagsBits = 0xD000000000000032;
  v278._object = 0xE000000000000000;
  v57._object = 0x800000020CB98350;
  v58.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v58.value._object = 0xEB00000000656C62;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  v278._countAndFlagsBits = 0;
  v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v57, v58, v56, v59, v278);

  v232 = v60;
  v61 = (v180 + *(v169 + 28));
  LODWORD(v169) = *v61;
  v167 = *(v61 + 1);
  LOBYTE(v224) = v169;
  *(&v224 + 1) = v167;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v62 = v173;
  Toggle<>.init<A>(_:isOn:)();
  LOBYTE(v56) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGMd) + 36);
  *v71 = v56;
  *(v71 + 8) = v64;
  *(v71 + 16) = v66;
  *(v71 + 24) = v68;
  *(v71 + 32) = v70;
  *(v71 + 40) = 0;
  LOBYTE(v56) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v80 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGMd) + 36);
  *v80 = v56;
  *(v80 + 8) = v73;
  *(v80 + 16) = v75;
  *(v80 + 24) = v77;
  *(v80 + 32) = v79;
  *(v80 + 40) = 0;
  static Font.body.getter();
  v81 = v190;
  v82 = v203;
  (*v183)(v190, v184, v203);
  Font.leading(_:)();

  v181(v81, v82);
  static Font.Weight.semibold.getter();
  v83 = Font.weight(_:)();

  v84 = swift_getKeyPath();
  v85 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd) + 36));
  *v85 = v84;
  v85[1] = v83;
  v86 = [v42 secondarySystemGroupedBackgroundColor];
  v87 = Color.init(uiColor:)();
  LOBYTE(v84) = static Edge.Set.all.getter();
  v88 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGMd) + 36);
  *v88 = v87;
  *(v88 + 8) = v84;
  v89 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGMd) + 36);
  v90 = *MEMORY[0x277CE0118];
  v91 = type metadata accessor for RoundedCornerStyle();
  v92 = *(*(v91 - 8) + 104);
  v92(v89, v90, v91);
  *(v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd) + 36)) = 256;
  v93 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindL0VyA1_GGMd) + 36);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA7CapsuleVGMd);
  static ContentShapeKinds.accessibility.getter();
  v92(v93, v90, v91);
  *(v93 + *(v94 + 36)) = 0;
  LOBYTE(v93) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v95 = v62 + *(v174 + 36);
  *v95 = v93;
  *(v95 + 8) = v96;
  *(v95 + 16) = v97;
  *(v95 + 24) = v98;
  *(v95 + 32) = v99;
  *(v95 + 40) = 0;
  LOBYTE(v254._countAndFlagsBits) = v169;
  v254._object = v167;
  State.wrappedValue.getter();
  LOBYTE(v254._countAndFlagsBits) = v232._countAndFlagsBits;
  v100 = v172;
  outlined init with copy of TrainingLoadEffortExplanationView(v180, v172, type metadata accessor for TrainingLoadEffortExplanationView);
  v101 = (*(v170 + 80) + 16) & ~*(v170 + 80);
  v102 = swift_allocObject();
  outlined init with take of TrainingLoadEffortExplanationView(v100, v102 + v101);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindL0VyA1_GGAJGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindL0VyA1_GGAJGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>> and conformance <> ModifiedContent<A, B>);
  View.onChange<A>(of:initial:_:)();

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout>(v62, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindL0VyA1_GGAJGMd);
  v103 = WorkoutUIBundle.super.isa;
  v279._object = 0xE000000000000000;
  v104._object = 0x800000020CB98390;
  v104._countAndFlagsBits = 0xD000000000000039;
  v105.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v105.value._object = 0xEB00000000656C62;
  v106._countAndFlagsBits = 0;
  v106._object = 0xE000000000000000;
  v279._countAndFlagsBits = 0;
  v107 = NSLocalizedString(_:tableName:bundle:value:comment:)(v104, v105, v103, v106, v279);

  v254 = v107;
  v108 = Text.init<A>(_:)();
  v110 = v109;
  LOBYTE(v100) = v111;
  static Font.subheadline.getter();
  v112 = v203;
  (*v183)(v81, v184, v203);
  Font.leading(_:)();

  v181(v81, v112);
  v113 = Text.font(_:)();
  v115 = v114;
  LOBYTE(v92) = v116;

  outlined consume of Text.Storage(v108, v110, v100 & 1);

  v117 = [v168 secondaryLabelColor];
  v254._countAndFlagsBits = Color.init(uiColor:)();
  v190 = Text.foregroundStyle<A>(_:)();
  v185 = v118;
  v120 = v119;
  v203 = v121;
  outlined consume of Text.Storage(v113, v115, v92 & 1);

  v184 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v123 = v122;
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v183[0] = v120 & 1;
  LOBYTE(v254._countAndFlagsBits) = v120 & 1;
  LOBYTE(v232._countAndFlagsBits) = 0;
  v130 = swift_getKeyPath();
  v182 = v130;
  LODWORD(v205) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v132 = v131;
  v134 = v133;
  v136 = v135;
  v138 = v137;
  LOBYTE(v254._countAndFlagsBits) = 0;
  v139 = v199;
  outlined init with copy of TrainingLoadEffortExplanationView(v198, v199, type metadata accessor for TrainingLoadOnboardingCore);
  v140 = v200;
  v141 = *(v201 + 16);
  v142 = v202;
  v141(v200, v204, v202);
  v143 = v139;
  v144 = v175;
  outlined init with copy of TrainingLoadEffortExplanationView(v143, v175, type metadata accessor for TrainingLoadOnboardingCore);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI26TrainingLoadOnboardingCoreV_05SwiftB015ModifiedContentVyAFyAFyAD4TextVAD30_EnvironmentKeyWritingModifierVyAD0J9AlignmentOGGAD14_PaddingLayoutVGAPGAD4ViewPADE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAFyAFyAFyAFyAFyAFyAFyAD6ToggleVyAHGAPGAPGAJyAD4FontVSgGGAD016_BackgroundStyleN0VyAD5ColorVGGAD11_ClipEffectVyAD7CapsuleVGGAD01_i9ShapeKindN0VyA15_GGAPG_SbQo_AFyAFyAFyAhPGAMGAPGtMd);
  v146 = (v144 + v145[12]);
  *&v216 = v196;
  *(&v216 + 1) = v195;
  LOBYTE(v217) = v191;
  *(&v217 + 1) = *v213;
  DWORD1(v217) = *&v213[3];
  *(&v217 + 1) = v197;
  *&v218 = KeyPath;
  BYTE8(v218) = 1;
  *(&v218 + 9) = *v212;
  HIDWORD(v218) = *&v212[3];
  LOBYTE(v219) = v194;
  *(&v219 + 1) = *v211;
  DWORD1(v219) = *&v211[3];
  *(&v219 + 1) = v179;
  *&v220 = v178;
  *(&v220 + 1) = v177;
  *&v221 = v176;
  BYTE8(v221) = 0;
  *(&v221 + 9) = v215[0];
  HIDWORD(v221) = *(v215 + 3);
  LOBYTE(v222) = v192;
  DWORD1(v222) = *&v214[3];
  *(&v222 + 1) = *v214;
  *(&v222 + 1) = v189;
  *&v223[0] = v188;
  *(&v223[0] + 1) = v187;
  *&v223[1] = v186;
  BYTE8(v223[1]) = 0;
  v147 = v217;
  v148 = v218;
  *v146 = v216;
  v146[1] = v147;
  v150 = v219;
  v149 = v220;
  v146[2] = v148;
  v146[3] = v150;
  v151 = v221;
  v152 = v222;
  *(v146 + 121) = *(v223 + 9);
  v153 = v223[0];
  v146[6] = v152;
  v146[7] = v153;
  v146[4] = v149;
  v146[5] = v151;
  v141(v144 + v145[16], v140, v142);
  v154 = (v144 + v145[20]);
  v155 = v190;
  *&v224 = v190;
  v156 = v185;
  *(&v224 + 1) = v185;
  LOBYTE(v140) = v183[0];
  LOBYTE(v225) = v183[0];
  *(&v225 + 1) = *v207;
  DWORD1(v225) = *&v207[3];
  v157 = v203;
  *(&v225 + 1) = v203;
  LOBYTE(v145) = v184;
  LOBYTE(v226) = v184;
  *(&v226 + 1) = *v206;
  DWORD1(v226) = *&v206[3];
  *(&v226 + 1) = v123;
  *&v227 = v125;
  *(&v227 + 1) = v127;
  *&v228 = v129;
  BYTE8(v228) = 0;
  *(&v228 + 9) = *v208;
  HIDWORD(v228) = *&v208[3];
  *&v229 = v130;
  BYTE8(v229) = 1;
  *(&v229 + 9) = v210[0];
  HIDWORD(v229) = *(v210 + 3);
  LOBYTE(v230) = v205;
  *(&v230 + 1) = *v209;
  DWORD1(v230) = *&v209[3];
  *(&v230 + 1) = v132;
  *&v231[0] = v134;
  *(&v231[0] + 1) = v136;
  *&v231[1] = v138;
  BYTE8(v231[1]) = 0;
  v158 = v224;
  v159 = v225;
  v160 = v227;
  v154[2] = v226;
  v154[3] = v160;
  *v154 = v158;
  v154[1] = v159;
  v161 = v228;
  v162 = v229;
  *(v154 + 121) = *(v231 + 9);
  v163 = v231[0];
  v154[6] = v230;
  v154[7] = v163;
  v154[4] = v161;
  v154[5] = v162;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>(&v216, &v254, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGMd);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>(&v224, &v254, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGGMd);
  v164 = v202;
  v165 = *(v201 + 8);
  v165(v204, v202);
  outlined destroy of TrainingLoadOnboardingCore(v198);
  v232._countAndFlagsBits = v155;
  v232._object = v156;
  v233 = v140;
  *v234 = *v207;
  *&v234[3] = *&v207[3];
  v235 = v157;
  v236 = v145;
  *v237 = *v206;
  *&v237[3] = *&v206[3];
  v238 = v123;
  v239 = v125;
  v240 = v127;
  v241 = v129;
  v242 = 0;
  *v243 = *v208;
  *&v243[3] = *&v208[3];
  v244 = v182;
  v245 = 1;
  *v246 = v210[0];
  *&v246[3] = *(v210 + 3);
  v247 = v205;
  *v248 = *v209;
  *&v248[3] = *&v209[3];
  v249 = v132;
  v250 = v134;
  v251 = v136;
  v252 = v138;
  v253 = 0;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout>(&v232, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGGMd);
  v165(v200, v164);
  v254._countAndFlagsBits = v196;
  v254._object = v195;
  v255 = v191;
  *v256 = *v213;
  *&v256[3] = *&v213[3];
  v257 = v197;
  v258 = KeyPath;
  v259 = 1;
  *v260 = *v212;
  *&v260[3] = *&v212[3];
  v261 = v194;
  *&v262[3] = *&v211[3];
  *v262 = *v211;
  v263 = v179;
  v264 = v178;
  v265 = v177;
  v266 = v176;
  v267 = 0;
  *&v268[3] = *(v215 + 3);
  *v268 = v215[0];
  v269 = v192;
  *&v270[3] = *&v214[3];
  *v270 = *v214;
  v271 = v189;
  v272 = v188;
  v273 = v187;
  v274 = v186;
  v275 = 0;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout>(&v254, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGAMGMd);
  return outlined destroy of TrainingLoadOnboardingCore(v199);
}

uint64_t closure #1 in closure #1 in closure #1 in TrainingLoadEffortExplanationView.body.getter()
{
  type metadata accessor for TrainingLoadEffortExplanationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  return FISetShouldTrackTrainingLoad();
}

uint64_t outlined init with take of TrainingLoadEffortExplanationView(uint64_t a1, uint64_t a2)
{
  EffortExplanationView = type metadata accessor for TrainingLoadEffortExplanationView();
  (*(*(EffortExplanationView - 8) + 32))(a2, a1, EffortExplanationView);
  return a2;
}

void type metadata completion function for TrainingLoadEffortExplanationView()
{
  type metadata accessor for Environment<DismissAction>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ()();
    if (v1 <= 0x3F)
    {
      type metadata accessor for State<Bool>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>>, _InsetViewModifier<TrainingLoadOnboardingButton>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>>, _InsetViewModifier<TrainingLoadOnboardingButton>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>>, _InsetViewModifier<TrainingLoadOnboardingButton>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA06ScrollG0VyAGy07WorkoutB026TrainingLoadOnboardingCoreV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA14_PaddingLayoutVGAVGAA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyACyACyACyACyACyACyAA6ToggleVyANGAVGAVGAPyAA4FontVSgGGAA016_BackgroundStyleR0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindR0VyA21_GGAVG_SbQo_ACyACyACyAnVGASGAVGtGG_AA6SpacerVtGGAA06_InsetgR0VyAJ0jkL6ButtonVGGAA010_FlexFrameU0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>>, _InsetViewModifier<TrainingLoadOnboardingButton>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>>, _InsetViewModifier<TrainingLoadOnboardingButton>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>>, _InsetViewModifier<TrainingLoadOnboardingButton>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>>, _InsetViewModifier<TrainingLoadOnboardingButton>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>>, _InsetViewModifier<TrainingLoadOnboardingButton>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA06ScrollG0VyAGy07WorkoutB026TrainingLoadOnboardingCoreV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA14_PaddingLayoutVGAVGAA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyACyACyACyACyACyACyAA6ToggleVyANGAVGAVGAPyAA4FontVSgGGAA016_BackgroundStyleR0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindR0VyA21_GGAVG_SbQo_ACyACyACyAnVGASGAVGtGG_AA6SpacerVtGGAA06_InsetgR0VyAJ0jkL6ButtonVGGMd);
    lazy protocol witness table accessor for type TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA06ScrollE0VyAEy07WorkoutB026TrainingLoadOnboardingCoreV_AA15ModifiedContentVyALyALyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA14_PaddingLayoutVGAVGAA0E0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyALyALyALyALyALyALyALyAA6ToggleVyANGAVGAVGAPyAA4FontVSgGGAA016_BackgroundStyleR0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_m9ShapeKindR0VyA21_GGAVG_SbQo_ALyALyALyAnVGASGAVGtGG_AA6SpacerVtGGMd);
    lazy protocol witness table accessor for type TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<TrainingLoadOnboardingButton> and conformance _InsetViewModifier<A>, &_s7SwiftUI18_InsetViewModifierVy07WorkoutB028TrainingLoadOnboardingButtonVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ScrollView<TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)>>, Spacer)>>, _InsetViewModifier<TrainingLoadOnboardingButton>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_33()
{
  v1 = *(type metadata accessor for TrainingLoadEffortExplanationView() - 8);
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

uint64_t partial apply for closure #1 in closure #1 in closure #1 in TrainingLoadEffortExplanationView.body.getter()
{
  type metadata accessor for TrainingLoadEffortExplanationView();

  return closure #1 in closure #1 in closure #1 in TrainingLoadEffortExplanationView.body.getter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindL0VyA1_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<Capsule> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA7CapsuleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _ClipEffect<Capsule> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_BackgroundStyleL0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAJGMR, lazy protocol witness table accessor for type ModifiedContent<Toggle<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<Toggle<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Toggle<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Toggle<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Toggle<Text> and conformance Toggle<A>, &_s7SwiftUI6ToggleVyAA4TextVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Toggle<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(TrainingLoadOnboardingCore, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of TrainingLoadEffortExplanationView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TrainingLoadOnboardingCore(uint64_t a1)
{
  OnboardingCore = type metadata accessor for TrainingLoadOnboardingCore();
  (*(*(OnboardingCore - 8) + 8))(a1, OnboardingCore);
  return a1;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Int WorkoutConfigurationIntent.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutConfigurationIntent()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutConfigurationIntent()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type WorkoutConfigurationIntent and conformance WorkoutConfigurationIntent()
{
  result = lazy protocol witness table cache variable for type WorkoutConfigurationIntent and conformance WorkoutConfigurationIntent;
  if (!lazy protocol witness table cache variable for type WorkoutConfigurationIntent and conformance WorkoutConfigurationIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfigurationIntent and conformance WorkoutConfigurationIntent);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutConfigurationIntent(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutConfigurationIntent(uint64_t result, unsigned int a2, unsigned int a3)
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