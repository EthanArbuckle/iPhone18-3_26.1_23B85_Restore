@interface NLSessionActivityPowerAccumulator
- (BOOL)instantaneousPowerStale;
- (NLSessionActivityPowerAccumulator)initWithBuilder:(id)a3;
- (NLSessionActivityPowerAccumulator)initWithBuilder:(id)a3 activityType:(id)a4 healthStore:(id)a5 liveWorkoutConfiguration:(id)a6 workoutSettingsManager:(id)a7 quantityTypeIdentifier:(id)a8;
- (NLWorkoutAlertDelegate)workoutAlertDelegate;
- (NSArray)chartDataElements;
- (void)accumulatorDidStartWithStartDate:(id)a3 handler:(id)a4;
- (void)accumulatorDidStop;
- (void)dealloc;
- (void)handleMetricPlattersUpdatedWithNotification:(id)a3;
- (void)setAveragePower:(double)a3;
- (void)setInstantaneousPower:(double)a3;
- (void)setInstantaneousPower:(double)a3 sampleDate:(id)a4;
- (void)setInstantaneousPowerStale:(BOOL)a3;
- (void)setThirtySecondAveragePower:(double)a3;
- (void)updateTargetZone:(id)a3;
@end

@implementation NLSessionActivityPowerAccumulator

- (void)setInstantaneousPower:(double)a3
{
  *(self + OBJC_IVAR___NLSessionActivityPowerAccumulator__instantaneousPower + 16) = a3;
  v3 = self;
  PowerAccumulator.instantaneousPower.didset();
}

- (BOOL)instantaneousPowerStale
{
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_instantaneousPowerStale;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setInstantaneousPowerStale:(BOOL)a3
{
  v5 = OBJC_IVAR___NLSessionActivityPowerAccumulator_instantaneousPowerStale;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)setAveragePower:(double)a3
{
  *(self + OBJC_IVAR___NLSessionActivityPowerAccumulator__averagePower + 16) = a3;
  v3 = self;
  PowerAccumulator.averagePower.didset();
}

- (void)setThirtySecondAveragePower:(double)a3
{
  *(self + OBJC_IVAR___NLSessionActivityPowerAccumulator__thirtySecondAveragePower + 16) = a3;
  v5 = self;
  v3 = [(NLSessionActivityDataAccumulator *)v5 updateHandler];
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))();
    _Block_release(v4);
  }
}

- (NSArray)chartDataElements
{
  if (*(self + OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = self;

    static Published.subscript.getter();
  }

  type metadata accessor for WorkoutChartDataElement();
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (NLWorkoutAlertDelegate)workoutAlertDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NLSessionActivityPowerAccumulator)initWithBuilder:(id)a3 activityType:(id)a4 healthStore:(id)a5 liveWorkoutConfiguration:(id)a6 workoutSettingsManager:(id)a7 quantityTypeIdentifier:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = specialized PowerAccumulator.init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:)(v13, v14, v15, v16, a7, a8);

  return v17;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  v6 = objc_opt_self();
  v7 = v4;
  v8 = [v6 didUpdateBTSensorSeenStatus];
  [v5 removeObserver:v7 name:v8 object:0];

  v9.receiver = v7;
  v9.super_class = type metadata accessor for PowerAccumulator();
  [(NLSessionActivityPowerAccumulator *)&v9 dealloc];
}

- (void)updateTargetZone:(id)a3
{
  v4 = a3;
  v5 = self;
  PowerAccumulator.updateTargetZone(_:)(v4);
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
    v11 = _sIeyB_Ieg_TRTA_6;
  }

  v14 = self;
  specialized PowerAccumulator.accumulatorDidStart(withStart:handler:)(v10);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);

  _sSo8NSObjectCSgWOhTm_11(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

- (void)accumulatorDidStop
{
  v2 = self;
  PowerAccumulator.accumulatorDidStop()();
}

- (void)setInstantaneousPower:(double)a3 sampleDate:(id)a4
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = self;
  PowerAccumulator.setInstantaneousPower(_:sampleDate:)(v10, a3);

  (*(v7 + 8))(v10, v6);
}

- (void)handleMetricPlattersUpdatedWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized PowerAccumulator.handleMetricPlattersUpdated(notification:)();
}

- (NLSessionActivityPowerAccumulator)initWithBuilder:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end