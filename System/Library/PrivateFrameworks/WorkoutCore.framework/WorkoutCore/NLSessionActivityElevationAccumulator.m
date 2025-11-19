@interface NLSessionActivityElevationAccumulator
- (HKQuantity)currentAltitude;
- (HKQuantity)elevationGain;
- (HKQuantity)maximumAltitude;
- (HKQuantity)minimumAltitude;
- (HKUnit)chartUnit;
- (NLSessionActivityElevationAccumulator)initWithBuilder:(id)a3;
- (NLSessionActivityElevationAccumulator)initWithBuilder:(id)a3 healthStore:(id)a4 liveWorkoutConfiguration:(id)a5 workoutSettingsManager:(id)a6 elevationUnit:(id)a7 delegate:(id)a8;
- (NSArray)chartDataElements;
- (void)accumulatorDidStartWithStartDate:(id)a3 handler:(id)a4;
- (void)accumulatorDidStop;
- (void)handleMetricPlattersUpdatedWithNotification:(id)a3;
- (void)processSample:(id)a3;
- (void)recoverLocationsFromStartDate:(id)a3 workoutUUID:(id)a4;
- (void)setChartUnit:(id)a3;
- (void)setCurrentAltitude:(id)a3;
- (void)setElevationGain:(id)a3;
@end

@implementation NLSessionActivityElevationAccumulator

- (HKQuantity)elevationGain
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationGain;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setElevationGain:(id)a3
{
  v5 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationGain;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  v9 = [(NLSessionActivityDataAccumulator *)v8 updateHandler];
  if (v9)
  {
    v10 = v9;
    (*(v9 + 2))();

    _Block_release(v10);
  }

  else
  {

    v8 = v7;
  }
}

- (HKQuantity)minimumAltitude
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_minimumAltitude;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (HKQuantity)maximumAltitude
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_maximumAltitude;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (HKQuantity)currentAltitude
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setCurrentAltitude:(id)a3
{
  v5 = OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  ElevationAccumulator.currentAltitude.didset();
}

- (NSArray)chartDataElements
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
  swift_beginAccess();
  if (*(&self->super.super.super.isa + v3))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = self;

    static Published.subscript.getter();
  }

  type metadata accessor for WorkoutChartDataElement();
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (HKUnit)chartUnit
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_chartUnit;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setChartUnit:(id)a3
{
  v5 = OBJC_IVAR___NLSessionActivityElevationAccumulator_chartUnit;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
}

- (NLSessionActivityElevationAccumulator)initWithBuilder:(id)a3 healthStore:(id)a4 liveWorkoutConfiguration:(id)a5 workoutSettingsManager:(id)a6 elevationUnit:(id)a7 delegate:(id)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  swift_unknownObjectRetain();
  return ElevationAccumulator.init(builder:healthStore:liveWorkoutConfiguration:workoutSettingsManager:elevationUnit:delegate:)(v12, v13, v14, v15, v16);
}

- (void)recoverLocationsFromStartDate:(id)a3 workoutUUID:(id)a4
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = self;
  ElevationAccumulator.recoverLocations(fromStartDate:workoutUUID:)(v14);

  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
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
    v11 = _sIeyB_Ieg_TRTA_4;
  }

  v14 = self;
  specialized ElevationAccumulator.accumulatorDidStart(withStart:handler:)(v10);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);

  _s10Foundation4UUIDVSgWOhTm_2(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

- (void)accumulatorDidStop
{
  v2 = self;
  ElevationAccumulator.accumulatorDidStop()();
}

- (void)processSample:(id)a3
{
  v4 = a3;
  v5 = self;
  ElevationAccumulator.process(sample:)(v4);
}

- (void)handleMetricPlattersUpdatedWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized ElevationAccumulator.handleMetricPlattersUpdated(notification:)();
}

- (NLSessionActivityElevationAccumulator)initWithBuilder:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end