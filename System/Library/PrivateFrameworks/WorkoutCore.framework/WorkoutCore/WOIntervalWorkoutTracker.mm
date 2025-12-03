@interface WOIntervalWorkoutTracker
- (BOOL)firstActivityStarted;
- (BOOL)instantaneousPowerStale;
- (BOOL)isPaceAvailable;
- (NLSessionActivityDescentProvider)descentProvider;
- (NLSessionActivityDistanceProvider)distanceProvider;
- (NLSessionActivityDistanceProvider)swimmingDistanceProvider;
- (NLSessionActivityDownhillRunCountProvider)downhillRunCountProvider;
- (NLSessionActivityElapsedTimeProvider)elapsedTimeProvider;
- (NLSessionActivityElevationProvider)elevationProvider;
- (NLSessionActivityEnergyBurnProvider)energyBurnProvider;
- (NLSessionActivityFlightsClimbedProvider)flightsClimbedProvider;
- (NLSessionActivityGhostPacerProvider)ghostPacerProvider;
- (NLSessionActivityHeartRateProvider)heartRateProvider;
- (NLSessionActivityLapsProvider)lapsProvider;
- (NLSessionActivityRollingPaceProvider)rollingPaceProvider;
- (NLSessionActivitySegmentProvider)segmentProvider;
- (NLSessionActivitySplitProvider)splitProvider;
- (NLSessionActivityWaterTemperatureProvider)waterTemperatureProvider;
- (NLSessionDataProvider)fallbackDataProvider;
- (NLWorkoutZoneTracker)zoneTracker;
- (NSArray)chartDataElements;
- (WOIntervalWorkoutTracker)init;
- (WOIntervalWorkoutTracker)initWithConfiguration:(id)configuration builder:(id)builder fallbackDataProvider:(id)provider powerAccumulator:(id)accumulator swimmingAccumulator:(id)swimmingAccumulator;
- (double)averageCadence;
- (double)averagePaceInMetersPerSecond;
- (double)averagePower;
- (double)currentCadence;
- (double)currentPaceInMetersPerSecond;
- (double)duration;
- (double)fastestPaceInMetersPerSecond;
- (double)instantaneousPower;
- (double)swimDistanceRoundingThresholdDistance;
- (double)thirtySecondAveragePower;
- (void)beginFirstActivityWithDate:(id)date;
- (void)dataProvider:(id)provider didUpdate:(unint64_t)update;
- (void)didSetDistanceGoalAchievedDuration:(double)duration;
- (void)didUpdateMetricType:(unint64_t)type;
- (void)moveToNextStepAutomatically;
- (void)moveToNextStepManually;
- (void)recoverStateWithBuilder:(id)builder;
- (void)recoverStateWithWorkoutActivities:(id)activities builderMetadata:(id)metadata;
- (void)setFirstActivityStarted:(BOOL)started;
- (void)setInstantaneousPower:(double)power sampleDate:(id)date;
- (void)setSwimDistanceRoundingThresholdDistance:(double)distance;
- (void)setZoneTracker:(id)tracker;
- (void)updateProgressDelegate:(id)delegate;
- (void)updateZoneTrackerWithDistanceUnit:(id)unit metadataSavingDelegate:(id)delegate;
@end

@implementation WOIntervalWorkoutTracker

- (double)instantaneousPower
{
  v2 = *(self + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v2 + 144);
}

- (BOOL)instantaneousPowerStale
{
  v2 = *(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider);
  selfCopy = self;
  powerProvider = [v2 powerProvider];
  if (powerProvider)
  {
    instantaneousPowerStale = [powerProvider instantaneousPowerStale];
    swift_unknownObjectRelease();
  }

  else
  {
    instantaneousPowerStale = 0;
  }

  return instantaneousPowerStale;
}

- (double)averagePower
{
  v2 = *(self + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v2 + 136);
}

- (double)thirtySecondAveragePower
{
  v2 = *(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider);
  selfCopy = self;
  powerProvider = [v2 powerProvider];
  if (powerProvider)
  {
    [powerProvider thirtySecondAveragePower];
    v6 = v5;
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (NSArray)chartDataElements
{
  v2 = *(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider);
  selfCopy = self;
  powerProvider = [v2 powerProvider];
  if (powerProvider)
  {
    chartDataElements = [powerProvider chartDataElements];
    swift_unknownObjectRelease();
    type metadata accessor for WorkoutChartDataElement();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    selfCopy = chartDataElements;
  }

  type metadata accessor for WorkoutChartDataElement();
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)setInstantaneousPower:(double)power sampleDate:(id)date
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = *(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider);
  selfCopy = self;
  powerProvider = [v11 powerProvider];
  if (powerProvider)
  {
    v14 = powerProvider;
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v14 setInstantaneousPower:isa sampleDate:power];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v7 + 8))(v10, v6);
}

- (NLSessionDataProvider)fallbackDataProvider
{
  v2 = *(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (NLWorkoutZoneTracker)zoneTracker
{
  v3 = OBJC_IVAR___WOIntervalWorkoutTracker_zoneTracker;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setZoneTracker:(id)tracker
{
  v5 = OBJC_IVAR___WOIntervalWorkoutTracker_zoneTracker;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = tracker;
  trackerCopy = tracker;
}

- (BOOL)firstActivityStarted
{
  v3 = OBJC_IVAR___WOIntervalWorkoutTracker_firstActivityStarted;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFirstActivityStarted:(BOOL)started
{
  v5 = OBJC_IVAR___WOIntervalWorkoutTracker_firstActivityStarted;
  swift_beginAccess();
  *(self + v5) = started;
}

- (void)updateProgressDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  IntervalWorkoutTracker.updateProgressDelegate(_:)(delegate);
  swift_unknownObjectRelease();
}

- (double)swimDistanceRoundingThresholdDistance
{
  v3 = OBJC_IVAR___WOIntervalWorkoutTracker_swimDistanceRoundingThresholdDistance;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSwimDistanceRoundingThresholdDistance:(double)distance
{
  v5 = OBJC_IVAR___WOIntervalWorkoutTracker_swimDistanceRoundingThresholdDistance;
  swift_beginAccess();
  *(self + v5) = distance;
}

- (WOIntervalWorkoutTracker)initWithConfiguration:(id)configuration builder:(id)builder fallbackDataProvider:(id)provider powerAccumulator:(id)accumulator swimmingAccumulator:(id)swimmingAccumulator
{
  configurationCopy = configuration;
  builderCopy = builder;
  swift_unknownObjectRetain();
  return IntervalWorkoutTracker.init(configuration:builder:fallbackDataProvider:powerAccumulator:swimmingAccumulator:)(configurationCopy, builderCopy, provider, accumulator, swimmingAccumulator);
}

- (void)updateZoneTrackerWithDistanceUnit:(id)unit metadataSavingDelegate:(id)delegate
{
  unitCopy = unit;
  swift_unknownObjectRetain();
  selfCopy = self;
  IntervalWorkoutTracker.updateZoneTracker(distanceUnit:metadataSavingDelegate:)(unitCopy);

  swift_unknownObjectRelease();
}

- (void)beginFirstActivityWithDate:(id)date
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  IntervalWorkoutTracker.beginFirstActivity(date:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)moveToNextStepManually
{
  selfCopy = self;
  IntervalWorkoutTracker.moveToNextStepManually()();
}

- (void)moveToNextStepAutomatically
{
  selfCopy = self;
  IntervalWorkoutTracker.moveToNextStep(successfulPreviousStep:)(1);
}

- (void)recoverStateWithBuilder:(id)builder
{
  builderCopy = builder;
  selfCopy = self;
  workoutActivities = [builderCopy workoutActivities];
  type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized IntervalWorkoutTracker.recoverState(workoutActivities:builderMetadata:)(v6);
}

- (void)recoverStateWithWorkoutActivities:(id)activities builderMetadata:(id)metadata
{
  type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  specialized IntervalWorkoutTracker.recoverState(workoutActivities:builderMetadata:)(v5);
}

- (WOIntervalWorkoutTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dataProvider:(id)provider didUpdate:(unint64_t)update
{
  swift_unknownObjectRetain();
  selfCopy = self;
  IntervalWorkoutTracker.dataProvider(_:didUpdate:)(provider, update);
  swift_unknownObjectRelease();
}

- (void)didUpdateMetricType:(unint64_t)type
{
  v5 = OBJC_IVAR___WOIntervalWorkoutTracker_zoneTracker;
  swift_beginAccess();
  v6 = *(self + v5);
  if (v6)
  {
    [v6 dataProvider:self didUpdate:type];
  }
}

- (void)didSetDistanceGoalAchievedDuration:(double)duration
{
  selfCopy = self;
  IntervalWorkoutTracker.didSetDistanceGoalAchievedDuration(_:)(duration);
}

- (NLSessionActivityDistanceProvider)distanceProvider
{
  distanceProvider = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) distanceProvider];

  return distanceProvider;
}

- (NLSessionActivityElevationProvider)elevationProvider
{
  elevationProvider = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) elevationProvider];

  return elevationProvider;
}

- (NLSessionActivityDistanceProvider)swimmingDistanceProvider
{
  swimmingDistanceProvider = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) swimmingDistanceProvider];

  return swimmingDistanceProvider;
}

- (NLSessionActivityLapsProvider)lapsProvider
{
  lapsProvider = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) lapsProvider];

  return lapsProvider;
}

- (NLSessionActivityFlightsClimbedProvider)flightsClimbedProvider
{
  flightsClimbedProvider = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) flightsClimbedProvider];

  return flightsClimbedProvider;
}

- (NLSessionActivityRollingPaceProvider)rollingPaceProvider
{
  rollingPaceProvider = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) rollingPaceProvider];

  return rollingPaceProvider;
}

- (NLSessionActivityElapsedTimeProvider)elapsedTimeProvider
{
  elapsedTimeProvider = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) elapsedTimeProvider];

  return elapsedTimeProvider;
}

- (NLSessionActivityHeartRateProvider)heartRateProvider
{
  heartRateProvider = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) heartRateProvider];

  return heartRateProvider;
}

- (NLSessionActivityEnergyBurnProvider)energyBurnProvider
{
  energyBurnProvider = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) energyBurnProvider];

  return energyBurnProvider;
}

- (NLSessionActivityGhostPacerProvider)ghostPacerProvider
{
  ghostPacerProvider = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) ghostPacerProvider];

  return ghostPacerProvider;
}

- (NLSessionActivitySegmentProvider)segmentProvider
{
  segmentProvider = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) segmentProvider];

  return segmentProvider;
}

- (NLSessionActivitySplitProvider)splitProvider
{
  splitProvider = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) splitProvider];

  return splitProvider;
}

- (double)duration
{
  v2 = *(self + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v2 + 96);
}

- (NLSessionActivityWaterTemperatureProvider)waterTemperatureProvider
{
  waterTemperatureProvider = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) waterTemperatureProvider];

  return waterTemperatureProvider;
}

- (NLSessionActivityDescentProvider)descentProvider
{
  descentProvider = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) descentProvider];

  return descentProvider;
}

- (NLSessionActivityDownhillRunCountProvider)downhillRunCountProvider
{
  downhillRunCountProvider = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) downhillRunCountProvider];

  return downhillRunCountProvider;
}

- (double)currentPaceInMetersPerSecond
{
  v2 = *(self + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v2 + 120);
}

- (double)averagePaceInMetersPerSecond
{
  v2 = *(self + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v2 + 112);
}

- (double)fastestPaceInMetersPerSecond
{
  v2 = *(self + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v2 + 128);
}

- (BOOL)isPaceAvailable
{
  v2 = *(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider);
  selfCopy = self;
  paceProvider = [v2 paceProvider];
  if (paceProvider)
  {
    isPaceAvailable = [paceProvider isPaceAvailable];
    swift_unknownObjectRelease();
  }

  else
  {
    isPaceAvailable = 0;
  }

  return isPaceAvailable;
}

- (double)currentCadence
{
  v2 = *(self + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v2 + 160);
}

- (double)averageCadence
{
  v2 = *(self + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v2 + 152);
}

@end