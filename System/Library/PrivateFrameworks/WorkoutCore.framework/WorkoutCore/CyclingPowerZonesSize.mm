@interface CyclingPowerZonesSize
- (unint64_t):;
@end

@implementation CyclingPowerZonesSize

- (unint64_t):
{
  result = lazy protocol witness table cache variable for type [CyclingPowerZonesSize : [CyclingPowerZone]] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [CyclingPowerZonesSize : [CyclingPowerZone]] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDy11WorkoutCore21CyclingPowerZonesSizeOSayAA0cD4ZoneCGGMd, &_sSDy11WorkoutCore21CyclingPowerZonesSizeOSayAA0cD4ZoneCGGMR);
    lazy protocol witness table accessor for type CyclingPowerZonesSize and conformance CyclingPowerZonesSize();
    lazy protocol witness table accessor for type [CyclingPowerZone] and conformance <A> [A](&lazy protocol witness table cache variable for type [CyclingPowerZone] and conformance <A> [A], &lazy protocol witness table cache variable for type CyclingPowerZone and conformance Zone);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CyclingPowerZonesSize : [CyclingPowerZone]] and conformance <> [A : B]);
  }

  return result;
}

@end