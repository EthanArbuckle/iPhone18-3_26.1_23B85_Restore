@interface (HKQuantitySample,
- (unint64_t)HKQuantitySample);
@end

@implementation (HKQuantitySample,

- (unint64_t)HKQuantitySample)
{
  v2 = lazy protocol witness table cache variable for type [(HKQuantitySample, HKQuantitySample)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(HKQuantitySample, HKQuantitySample)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16HKQuantitySampleC_ABtGMd, &_sSaySo16HKQuantitySampleC_ABtGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(HKQuantitySample, HKQuantitySample)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

@end