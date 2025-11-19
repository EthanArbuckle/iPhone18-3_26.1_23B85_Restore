@interface NLSessionActivityWaterTemperatureAccumulator
- (BOOL)currentWaterTemperatureStale;
- (void)accumulatorDidStartWithStartDate:(id)a3 handler:(id)a4;
- (void)accumulatorDidStop;
- (void)manager:(id)a3 didUpdateEvent:(id)a4;
- (void)manager:(id)a3 didUpdateTemperature:(id)a4;
- (void)manager:(id)a3 errorOccurred:(id)a4;
- (void)setCurrentWaterTemperatureStale:(BOOL)a3;
- (void)updateWithStatistics:(id)a3 duration:(double)a4;
@end

@implementation NLSessionActivityWaterTemperatureAccumulator

- (BOOL)currentWaterTemperatureStale
{
  v3 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureStale;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setCurrentWaterTemperatureStale:(BOOL)a3
{
  v5 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureStale;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (void)accumulatorDidStartWithStartDate:(id)a3 handler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = _Block_copy(a4);
  if (a3)
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

  v14 = self;
  specialized WaterTemperatureAccumulator.accumulatorDidStart(withStart:handler:)(v10);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);

  _sSo8NSObjectCSgWOhTm_0(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

- (void)updateWithStatistics:(id)a3 duration:(double)a4
{
  v6 = a3;
  v7 = self;
  WaterTemperatureAccumulator.update(with:duration:)(v6, a4);
}

- (void)accumulatorDidStop
{
  v2 = self;
  WaterTemperatureAccumulator.accumulatorDidStop()();
}

- (void)manager:(id)a3 didUpdateEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  WaterTemperatureAccumulator.manager(_:didUpdate:)(v6, v7);
}

- (void)manager:(id)a3 didUpdateTemperature:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  WaterTemperatureAccumulator.manager(_:didUpdate:)(v6, v7);
}

- (void)manager:(id)a3 errorOccurred:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  WaterTemperatureAccumulator.manager(_:errorOccurred:)(v6, v8);
}

@end