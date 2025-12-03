@interface NLSessionActivityWaterTemperatureAccumulator
- (BOOL)currentWaterTemperatureStale;
- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler;
- (void)accumulatorDidStop;
- (void)manager:(id)manager didUpdateEvent:(id)event;
- (void)manager:(id)manager didUpdateTemperature:(id)temperature;
- (void)manager:(id)manager errorOccurred:(id)occurred;
- (void)setCurrentWaterTemperatureStale:(BOOL)stale;
- (void)updateWithStatistics:(id)statistics duration:(double)duration;
@end

@implementation NLSessionActivityWaterTemperatureAccumulator

- (BOOL)currentWaterTemperatureStale
{
  v3 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureStale;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setCurrentWaterTemperatureStale:(BOOL)stale
{
  v5 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureStale;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = stale;
}

- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = _Block_copy(handler);
  if (date)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  if (v11)
  {
    *(swift_allocObject() + 16) = v11;
    v11 = _sIeyB_Ieg_TRTA_0;
  }

  selfCopy = self;
  specialized WaterTemperatureAccumulator.accumulatorDidStart(withStart:handler:)(v10);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);

  _sSo8NSObjectCSgWOhTm_0(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

- (void)updateWithStatistics:(id)statistics duration:(double)duration
{
  statisticsCopy = statistics;
  selfCopy = self;
  WaterTemperatureAccumulator.update(with:duration:)(statisticsCopy, duration);
}

- (void)accumulatorDidStop
{
  selfCopy = self;
  WaterTemperatureAccumulator.accumulatorDidStop()();
}

- (void)manager:(id)manager didUpdateEvent:(id)event
{
  managerCopy = manager;
  eventCopy = event;
  selfCopy = self;
  WaterTemperatureAccumulator.manager(_:didUpdate:)(managerCopy, eventCopy);
}

- (void)manager:(id)manager didUpdateTemperature:(id)temperature
{
  managerCopy = manager;
  temperatureCopy = temperature;
  selfCopy = self;
  WaterTemperatureAccumulator.manager(_:didUpdate:)(managerCopy, temperatureCopy);
}

- (void)manager:(id)manager errorOccurred:(id)occurred
{
  managerCopy = manager;
  occurredCopy = occurred;
  selfCopy = self;
  WaterTemperatureAccumulator.manager(_:errorOccurred:)(managerCopy, occurredCopy);
}

@end