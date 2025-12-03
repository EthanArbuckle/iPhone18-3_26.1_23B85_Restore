@interface String:
- (Class)NSObject;
- (uint64_t)DemoTrainingLoadValues;
@end

@implementation String:

- (Class)NSObject
{
  v1 = *(self + 32);

  v3 = v1(v2);

  if (v3)
  {
    type metadata accessor for NSObject();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (uint64_t)DemoTrainingLoadValues
{
  result = *self;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySS9WorkoutUI22DemoTrainingLoadValuesVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

@end