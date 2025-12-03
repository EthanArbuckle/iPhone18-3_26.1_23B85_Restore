@interface HKQuantityType:
- (uint64_t)HKUnit;
- (unint64_t)HKUnit;
@end

@implementation HKQuantityType:

- (uint64_t)HKUnit
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v10 = *__swift_project_boxed_opaque_existential_1((self + 32), *(self + 56));
  if (a3)
  {
    v5 = a3;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo14HKQuantityTypeCSo6HKUnitCGMd, &_sSDySo14HKQuantityTypeCSo6HKUnitCGMR);
    _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v10, a3, v6);
  }

  else
  {
    MEMORY[0x277D82BE0](a2);
    type metadata accessor for HKQuantityType();
    type metadata accessor for HKUnit();
    lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo14HKQuantityTypeCSo6HKUnitCGMd, &_sSDySo14HKQuantityTypeCSo6HKUnitCGMR);
    _resumeUnsafeThrowingContinuation<A>(_:_:)(v10, &v11, v3);
    MEMORY[0x277D82BD8](a2);
  }

  MEMORY[0x277D82BD8](a3);
  return MEMORY[0x277D82BD8](a2);
}

- (unint64_t)HKUnit
{
  v2 = lazy protocol witness table cache variable for type [HKQuantityType : HKUnit] and conformance [A : B];
  if (!lazy protocol witness table cache variable for type [HKQuantityType : HKUnit] and conformance [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySo14HKQuantityTypeCSo6HKUnitCGMd, &_sSDySo14HKQuantityTypeCSo6HKUnitCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKQuantityType : HKUnit] and conformance [A : B]);
    return WitnessTable;
  }

  return v2;
}

@end