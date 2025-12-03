@interface WOAveragePowerAccumulator
- (HKQuantity)averagePower;
- (NSDate)startDate;
- (WOAveragePowerAccumulator)init;
- (void)processWithSamples:(id)samples;
- (void)resetWith:(id)with;
@end

@implementation WOAveragePowerAccumulator

- (NSDate)startDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
  AveragePowerAccumulator.startDate.getter(v6);

  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
    v11 = isa;
  }

  return v11;
}

- (HKQuantity)averagePower
{
  selfCopy = self;
  v3 = AveragePowerAccumulator.averagePower.getter();

  return v3;
}

- (void)resetWith:(id)with
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  if (with)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  selfCopy = self;
  AveragePowerAccumulator.reset(with:)(v8);

  _s10Foundation4DateVSgWOhTm_11(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

- (void)processWithSamples:(id)samples
{
  type metadata accessor for HKWorkoutBuilderQuantity();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  AveragePowerAccumulator.process(samples:)(v4);
}

- (WOAveragePowerAccumulator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end