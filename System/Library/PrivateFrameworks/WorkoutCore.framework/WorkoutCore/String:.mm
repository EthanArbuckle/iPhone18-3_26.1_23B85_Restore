@interface String:
- (Class)NSObject;
- (uint64_t)AnyHashable;
- (unint64_t)MediaPlaybackConfigurationItem;
- (void)Apple_Workout_Core_ActivityMetadataValue;
@end

@implementation String:

- (void)Apple_Workout_Core_ActivityMetadataValue
{
  if (!lazy cache variable for type metadata for [String : Apple_Workout_Core_ActivityMetadataValue])
  {
    type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(255);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String : Apple_Workout_Core_ActivityMetadataValue]);
    }
  }
}

- (Class)NSObject
{
  v1 = *(self + 32);
  v2 = *(self + 40);

  v4 = v1(v3);

  if (v4)
  {
    _sSo8NSStringCMaTm_0(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (unint64_t)MediaPlaybackConfigurationItem
{
  result = lazy protocol witness table cache variable for type [String : MediaPlaybackConfigurationItem] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [String : MediaPlaybackConfigurationItem] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySS11WorkoutCore30MediaPlaybackConfigurationItemCGMd, &_sSDySS11WorkoutCore30MediaPlaybackConfigurationItemCGMR);
    lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : MediaPlaybackConfigurationItem] and conformance <> [A : B]);
  }

  return result;
}

- (uint64_t)AnyHashable
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SDySSs11AnyHashableVGtMd, &_sSS_SDySSs11AnyHashableVGtMR);
  (*(*(v2 - 8) + 8))(self, v2);
  return self;
}

@end