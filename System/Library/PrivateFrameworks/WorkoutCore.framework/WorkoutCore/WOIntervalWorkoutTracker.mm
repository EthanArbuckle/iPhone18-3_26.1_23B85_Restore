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
- (WOIntervalWorkoutTracker)initWithConfiguration:(id)a3 builder:(id)a4 fallbackDataProvider:(id)a5 powerAccumulator:(id)a6 swimmingAccumulator:(id)a7;
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
- (void)beginFirstActivityWithDate:(id)a3;
- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4;
- (void)didSetDistanceGoalAchievedDuration:(double)a3;
- (void)didUpdateMetricType:(unint64_t)a3;
- (void)moveToNextStepAutomatically;
- (void)moveToNextStepManually;
- (void)recoverStateWithBuilder:(id)a3;
- (void)recoverStateWithWorkoutActivities:(id)a3 builderMetadata:(id)a4;
- (void)setFirstActivityStarted:(BOOL)a3;
- (void)setInstantaneousPower:(double)a3 sampleDate:(id)a4;
- (void)setSwimDistanceRoundingThresholdDistance:(double)a3;
- (void)setZoneTracker:(id)a3;
- (void)updateProgressDelegate:(id)a3;
- (void)updateZoneTrackerWithDistanceUnit:(id)a3 metadataSavingDelegate:(id)a4;
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
  v3 = self;
  v4 = [v2 powerProvider];
  if (v4)
  {
    v5 = [v4 instantaneousPowerStale];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
  v3 = self;
  v4 = [v2 powerProvider];
  if (v4)
  {
    [v4 thirtySecondAveragePower];
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
  v3 = self;
  v4 = [v2 powerProvider];
  if (v4)
  {
    v5 = [v4 chartDataElements];
    swift_unknownObjectRelease();
    type metadata accessor for WorkoutChartDataElement();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = v5;
  }

  type metadata accessor for WorkoutChartDataElement();
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)setInstantaneousPower:(double)a3 sampleDate:(id)a4
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = *(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider);
  v12 = self;
  v13 = [v11 powerProvider];
  if (v13)
  {
    v14 = v13;
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v14 setInstantaneousPower:isa sampleDate:a3];

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

- (void)setZoneTracker:(id)a3
{
  v5 = OBJC_IVAR___WOIntervalWorkoutTracker_zoneTracker;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (BOOL)firstActivityStarted
{
  v3 = OBJC_IVAR___WOIntervalWorkoutTracker_firstActivityStarted;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFirstActivityStarted:(BOOL)a3
{
  v5 = OBJC_IVAR___WOIntervalWorkoutTracker_firstActivityStarted;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)updateProgressDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  IntervalWorkoutTracker.updateProgressDelegate(_:)(a3);
  swift_unknownObjectRelease();
}

- (double)swimDistanceRoundingThresholdDistance
{
  v3 = OBJC_IVAR___WOIntervalWorkoutTracker_swimDistanceRoundingThresholdDistance;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSwimDistanceRoundingThresholdDistance:(double)a3
{
  v5 = OBJC_IVAR___WOIntervalWorkoutTracker_swimDistanceRoundingThresholdDistance;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (WOIntervalWorkoutTracker)initWithConfiguration:(id)a3 builder:(id)a4 fallbackDataProvider:(id)a5 powerAccumulator:(id)a6 swimmingAccumulator:(id)a7
{
  v11 = a3;
  v12 = a4;
  swift_unknownObjectRetain();
  return IntervalWorkoutTracker.init(configuration:builder:fallbackDataProvider:powerAccumulator:swimmingAccumulator:)(v11, v12, a5, a6, a7);
}

- (void)updateZoneTrackerWithDistanceUnit:(id)a3 metadataSavingDelegate:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  IntervalWorkoutTracker.updateZoneTracker(distanceUnit:metadataSavingDelegate:)(v5);

  swift_unknownObjectRelease();
}

- (void)beginFirstActivityWithDate:(id)a3
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  IntervalWorkoutTracker.beginFirstActivity(date:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)moveToNextStepManually
{
  v2 = self;
  IntervalWorkoutTracker.moveToNextStepManually()();
}

- (void)moveToNextStepAutomatically
{
  v2 = self;
  IntervalWorkoutTracker.moveToNextStep(successfulPreviousStep:)(1);
}

- (void)recoverStateWithBuilder:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = [v4 workoutActivities];
  type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized IntervalWorkoutTracker.recoverState(workoutActivities:builderMetadata:)(v6);
}

- (void)recoverStateWithWorkoutActivities:(id)a3 builderMetadata:(id)a4
{
  type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  specialized IntervalWorkoutTracker.recoverState(workoutActivities:builderMetadata:)(v5);
}

- (WOIntervalWorkoutTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  IntervalWorkoutTracker.dataProvider(_:didUpdate:)(a3, a4);
  swift_unknownObjectRelease();
}

- (void)didUpdateMetricType:(unint64_t)a3
{
  v5 = OBJC_IVAR___WOIntervalWorkoutTracker_zoneTracker;
  swift_beginAccess();
  v6 = *(self + v5);
  if (v6)
  {
    [v6 dataProvider:self didUpdate:a3];
  }
}

- (void)didSetDistanceGoalAchievedDuration:(double)a3
{
  v4 = self;
  IntervalWorkoutTracker.didSetDistanceGoalAchievedDuration(_:)(a3);
}

- (NLSessionActivityDistanceProvider)distanceProvider
{
  v2 = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) distanceProvider];

  return v2;
}

- (NLSessionActivityElevationProvider)elevationProvider
{
  v2 = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) elevationProvider];

  return v2;
}

- (NLSessionActivityDistanceProvider)swimmingDistanceProvider
{
  v2 = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) swimmingDistanceProvider];

  return v2;
}

- (NLSessionActivityLapsProvider)lapsProvider
{
  v2 = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) lapsProvider];

  return v2;
}

- (NLSessionActivityFlightsClimbedProvider)flightsClimbedProvider
{
  v2 = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) flightsClimbedProvider];

  return v2;
}

- (NLSessionActivityRollingPaceProvider)rollingPaceProvider
{
  v2 = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) rollingPaceProvider];

  return v2;
}

- (NLSessionActivityElapsedTimeProvider)elapsedTimeProvider
{
  v2 = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) elapsedTimeProvider];

  return v2;
}

- (NLSessionActivityHeartRateProvider)heartRateProvider
{
  v2 = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) heartRateProvider];

  return v2;
}

- (NLSessionActivityEnergyBurnProvider)energyBurnProvider
{
  v2 = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) energyBurnProvider];

  return v2;
}

- (NLSessionActivityGhostPacerProvider)ghostPacerProvider
{
  v2 = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) ghostPacerProvider];

  return v2;
}

- (NLSessionActivitySegmentProvider)segmentProvider
{
  v2 = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) segmentProvider];

  return v2;
}

- (NLSessionActivitySplitProvider)splitProvider
{
  v2 = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) splitProvider];

  return v2;
}

- (double)duration
{
  v2 = *(self + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v2 + 96);
}

- (NLSessionActivityWaterTemperatureProvider)waterTemperatureProvider
{
  v2 = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) waterTemperatureProvider];

  return v2;
}

- (NLSessionActivityDescentProvider)descentProvider
{
  v2 = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) descentProvider];

  return v2;
}

- (NLSessionActivityDownhillRunCountProvider)downhillRunCountProvider
{
  v2 = [*(self + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) downhillRunCountProvider];

  return v2;
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
  v3 = self;
  v4 = [v2 paceProvider];
  if (v4)
  {
    v5 = [v4 isPaceAvailable];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  return v5;
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