@interface NLSessionActivityElevationAccumulator
- (HKQuantity)currentAltitude;
- (HKQuantity)elevationGain;
- (HKQuantity)maximumAltitude;
- (HKQuantity)minimumAltitude;
- (HKUnit)chartUnit;
- (NLSessionActivityElevationAccumulator)initWithBuilder:(id)builder;
- (NLSessionActivityElevationAccumulator)initWithBuilder:(id)builder healthStore:(id)store liveWorkoutConfiguration:(id)configuration workoutSettingsManager:(id)manager elevationUnit:(id)unit delegate:(id)delegate;
- (NSArray)chartDataElements;
- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler;
- (void)accumulatorDidStop;
- (void)handleMetricPlattersUpdatedWithNotification:(id)notification;
- (void)processSample:(id)sample;
- (void)recoverLocationsFromStartDate:(id)date workoutUUID:(id)d;
- (void)setChartUnit:(id)unit;
- (void)setCurrentAltitude:(id)altitude;
- (void)setElevationGain:(id)gain;
@end

@implementation NLSessionActivityElevationAccumulator

- (HKQuantity)elevationGain
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationGain;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setElevationGain:(id)gain
{
  v5 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationGain;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = gain;
  gainCopy = gain;
  selfCopy = self;

  updateHandler = [(NLSessionActivityDataAccumulator *)selfCopy updateHandler];
  if (updateHandler)
  {
    v10 = updateHandler;
    (*(updateHandler + 2))();

    _Block_release(v10);
  }

  else
  {

    selfCopy = gainCopy;
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

- (void)setCurrentAltitude:(id)altitude
{
  v5 = OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = altitude;
  altitudeCopy = altitude;
  selfCopy = self;

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
    selfCopy = self;

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

- (void)setChartUnit:(id)unit
{
  v5 = OBJC_IVAR___NLSessionActivityElevationAccumulator_chartUnit;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = unit;
  unitCopy = unit;
}

- (NLSessionActivityElevationAccumulator)initWithBuilder:(id)builder healthStore:(id)store liveWorkoutConfiguration:(id)configuration workoutSettingsManager:(id)manager elevationUnit:(id)unit delegate:(id)delegate
{
  builderCopy = builder;
  storeCopy = store;
  configurationCopy = configuration;
  managerCopy = manager;
  unitCopy = unit;
  swift_unknownObjectRetain();
  return ElevationAccumulator.init(builder:healthStore:liveWorkoutConfiguration:workoutSettingsManager:elevationUnit:delegate:)(builderCopy, storeCopy, configurationCopy, managerCopy, unitCopy);
}

- (void)recoverLocationsFromStartDate:(id)date workoutUUID:(id)d
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
  selfCopy = self;
  ElevationAccumulator.recoverLocations(fromStartDate:workoutUUID:)(v14);

  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
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
    v11 = _sIeyB_Ieg_TRTA_4;
  }

  selfCopy = self;
  specialized ElevationAccumulator.accumulatorDidStart(withStart:handler:)(v10);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);

  _s10Foundation4UUIDVSgWOhTm_2(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

- (void)accumulatorDidStop
{
  selfCopy = self;
  ElevationAccumulator.accumulatorDidStop()();
}

- (void)processSample:(id)sample
{
  sampleCopy = sample;
  selfCopy = self;
  ElevationAccumulator.process(sample:)(sampleCopy);
}

- (void)handleMetricPlattersUpdatedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  specialized ElevationAccumulator.handleMetricPlattersUpdated(notification:)();
}

- (NLSessionActivityElevationAccumulator)initWithBuilder:(id)builder
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end