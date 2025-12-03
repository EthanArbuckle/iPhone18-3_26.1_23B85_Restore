@interface NLSessionActivityPowerAccumulator
- (BOOL)instantaneousPowerStale;
- (NLSessionActivityPowerAccumulator)initWithBuilder:(id)builder;
- (NLSessionActivityPowerAccumulator)initWithBuilder:(id)builder activityType:(id)type healthStore:(id)store liveWorkoutConfiguration:(id)configuration workoutSettingsManager:(id)manager quantityTypeIdentifier:(id)identifier;
- (NLWorkoutAlertDelegate)workoutAlertDelegate;
- (NSArray)chartDataElements;
- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler;
- (void)accumulatorDidStop;
- (void)dealloc;
- (void)handleMetricPlattersUpdatedWithNotification:(id)notification;
- (void)setAveragePower:(double)power;
- (void)setInstantaneousPower:(double)power;
- (void)setInstantaneousPower:(double)power sampleDate:(id)date;
- (void)setInstantaneousPowerStale:(BOOL)stale;
- (void)setThirtySecondAveragePower:(double)power;
- (void)updateTargetZone:(id)zone;
@end

@implementation NLSessionActivityPowerAccumulator

- (void)setInstantaneousPower:(double)power
{
  *(self + OBJC_IVAR___NLSessionActivityPowerAccumulator__instantaneousPower + 16) = power;
  selfCopy = self;
  PowerAccumulator.instantaneousPower.didset();
}

- (BOOL)instantaneousPowerStale
{
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_instantaneousPowerStale;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setInstantaneousPowerStale:(BOOL)stale
{
  v5 = OBJC_IVAR___NLSessionActivityPowerAccumulator_instantaneousPowerStale;
  swift_beginAccess();
  *(self + v5) = stale;
}

- (void)setAveragePower:(double)power
{
  *(self + OBJC_IVAR___NLSessionActivityPowerAccumulator__averagePower + 16) = power;
  selfCopy = self;
  PowerAccumulator.averagePower.didset();
}

- (void)setThirtySecondAveragePower:(double)power
{
  *(self + OBJC_IVAR___NLSessionActivityPowerAccumulator__thirtySecondAveragePower + 16) = power;
  selfCopy = self;
  updateHandler = [(NLSessionActivityDataAccumulator *)selfCopy updateHandler];
  if (updateHandler)
  {
    v4 = updateHandler;
    (*(updateHandler + 2))();
    _Block_release(v4);
  }
}

- (NSArray)chartDataElements
{
  if (*(self + OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    selfCopy = self;

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

- (NLSessionActivityPowerAccumulator)initWithBuilder:(id)builder activityType:(id)type healthStore:(id)store liveWorkoutConfiguration:(id)configuration workoutSettingsManager:(id)manager quantityTypeIdentifier:(id)identifier
{
  builderCopy = builder;
  typeCopy = type;
  storeCopy = store;
  configurationCopy = configuration;
  v17 = specialized PowerAccumulator.init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:)(builderCopy, typeCopy, storeCopy, configurationCopy, manager, identifier);

  return v17;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  v6 = objc_opt_self();
  v7 = selfCopy;
  didUpdateBTSensorSeenStatus = [v6 didUpdateBTSensorSeenStatus];
  [defaultCenter removeObserver:v7 name:didUpdateBTSensorSeenStatus object:0];

  v9.receiver = v7;
  v9.super_class = type metadata accessor for PowerAccumulator();
  [(NLSessionActivityPowerAccumulator *)&v9 dealloc];
}

- (void)updateTargetZone:(id)zone
{
  zoneCopy = zone;
  selfCopy = self;
  PowerAccumulator.updateTargetZone(_:)(zoneCopy);
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
    v11 = _sIeyB_Ieg_TRTA_6;
  }

  selfCopy = self;
  specialized PowerAccumulator.accumulatorDidStart(withStart:handler:)(v10);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);

  _sSo8NSObjectCSgWOhTm_11(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

- (void)accumulatorDidStop
{
  selfCopy = self;
  PowerAccumulator.accumulatorDidStop()();
}

- (void)setInstantaneousPower:(double)power sampleDate:(id)date
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  PowerAccumulator.setInstantaneousPower(_:sampleDate:)(v10, power);

  (*(v7 + 8))(v10, v6);
}

- (void)handleMetricPlattersUpdatedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  specialized PowerAccumulator.handleMetricPlattersUpdated(notification:)();
}

- (NLSessionActivityPowerAccumulator)initWithBuilder:(id)builder
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end