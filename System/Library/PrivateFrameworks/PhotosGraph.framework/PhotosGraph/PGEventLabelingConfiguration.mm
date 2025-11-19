@interface PGEventLabelingConfiguration
+ (BOOL)isEventLabelingEnabled;
+ (BOOL)usePrimaryMeaningDomainForEventLabelingMeanings;
+ (NSString)bundlePath;
- (BOOL)useEventLabelingToInferWithMeaningLabel:(id)a3;
- (NSSet)meaningLabels;
- (id)thresholdsBy:(id)a3;
@end

@implementation PGEventLabelingConfiguration

- (NSSet)meaningLabels
{
  v2 = *(self + OBJC_IVAR___PGEventLabelingConfiguration_meaningLabels);

  v3 = sub_22F741410();

  return v3;
}

- (id)thresholdsBy:(id)a3
{
  v4 = sub_22F740E20();
  v6 = v5;
  v7 = self;
  v8 = EventLabelingConfiguration.thresholds(by:)(v4, v6);

  return v8;
}

- (BOOL)useEventLabelingToInferWithMeaningLabel:(id)a3
{
  v4 = sub_22F740E20();
  v6 = v5;
  v7 = sub_22F73FA60();
  v12[3] = v7;
  v12[4] = sub_22F350D8C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v7 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A810], v7);
  v9 = self;
  LOBYTE(v7) = sub_22F73FA20();
  __swift_destroy_boxed_opaque_existential_0(v12);
  if ((v7 & 1) != 0 && PFOSVariantHasInternalDiagnostics())
  {
    v10 = sub_22F15E910(v4, v6, *(v9 + OBJC_IVAR___PGEventLabelingConfiguration_meaningLabels));
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

+ (BOOL)isEventLabelingEnabled
{
  v2 = sub_22F73FA60();
  v5[3] = v2;
  v5[4] = sub_22F350D8C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A810], v2);
  LOBYTE(v2) = sub_22F73FA20();
  __swift_destroy_boxed_opaque_existential_0(v5);
  if (v2)
  {
    return PFOSVariantHasInternalDiagnostics();
  }

  else
  {
    return 0;
  }
}

+ (BOOL)usePrimaryMeaningDomainForEventLabelingMeanings
{
  v2 = objc_opt_self();

  return [v2 useMeaningEdgeForEventLabelingAlgorithm];
}

+ (NSString)bundlePath
{
  _s11PhotosGraph26EventLabelingConfigurationC10bundlePathSSSgvgZ_0();
  if (v2)
  {
    v3 = sub_22F740DF0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end