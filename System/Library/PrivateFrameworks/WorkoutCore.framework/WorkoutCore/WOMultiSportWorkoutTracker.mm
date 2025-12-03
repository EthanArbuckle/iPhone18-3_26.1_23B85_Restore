@interface WOMultiSportWorkoutTracker
- (BOOL)currentlyInTransition;
- (BOOL)firstActivityStarted;
- (NSArray)allHKConfigurations;
- (NSArray)metadataKeysToDelete;
- (NSDictionary)autoTransitionMetadata;
- (WOMultiSportWorkoutTracker)init;
- (double)lastMultisportLegAveragePace;
- (double)lastMultisportLegDistance;
- (double)lastMultisportLegTime;
- (void)addObserver:(id)observer;
- (void)cancelEndWorkoutTimer;
- (void)dataProvider:(id)provider didUpdate:(unint64_t)update;
- (void)handleSuggestedConfiguration:(id)configuration date:(id)date;
- (void)manuallyMoveToNextActivityWithMultisportTransitions:(id)transitions;
- (void)notifyObserversValuesChanged;
- (void)recoverStateWithSessionActivity:(id)activity;
- (void)recoverStateWithWorkoutActivities:(id)activities builderMetadata:(id)metadata;
- (void)setEndWorkoutTimer:(id)timer;
- (void)setFirstActivityStarted:(BOOL)started;
- (void)startEndWorkoutTimerFromDate:(id)date;
- (void)workout:(id)workout didBeginNewActivity:(id)activity;
- (void)workout:(id)workout didMoveToState:(int64_t)state;
@end

@implementation WOMultiSportWorkoutTracker

- (void)dataProvider:(id)provider didUpdate:(unint64_t)update
{
  swift_unknownObjectRetain();
  selfCopy = self;
  MultiSportWorkoutTracker.dataProvider(_:didUpdate:)(provider, update);
  swift_unknownObjectRelease();
}

- (void)workout:(id)workout didMoveToState:(int64_t)state
{
  workoutCopy = workout;
  selfCopy = self;
  specialized MultiSportWorkoutTracker.workout(_:didMoveToState:)(state);
}

- (void)workout:(id)workout didBeginNewActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  selfCopy = self;
  specialized MultiSportWorkoutTracker.workout(_:didBeginNewActivity:)(activityCopy);
}

- (BOOL)firstActivityStarted
{
  v3 = OBJC_IVAR___WOMultiSportWorkoutTracker_firstActivityStarted;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFirstActivityStarted:(BOOL)started
{
  v5 = OBJC_IVAR___WOMultiSportWorkoutTracker_firstActivityStarted;
  swift_beginAccess();
  *(self + v5) = started;
}

- (BOOL)currentlyInTransition
{
  v3 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  swift_beginAccess();
  return *(self + v3) != 0;
}

- (double)lastMultisportLegTime
{
  v2 = *(self + OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportTimes);
  v3 = *(v2 + 16);
  if (v3)
  {
    return *(v2 + 8 * v3 + 24);
  }

  else
  {
    return 0.0;
  }
}

- (double)lastMultisportLegDistance
{
  selfCopy = self;
  MultiSportWorkoutTracker.lastMultisportLegDistance.getter();
  v4 = v3;

  return v4;
}

- (double)lastMultisportLegAveragePace
{
  v2 = *(self + OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportAveragePaces);
  v3 = *(v2 + 16);
  if (v3)
  {
    return *(v2 + 8 * v3 + 24);
  }

  else
  {
    return 0.0;
  }
}

- (NSArray)allHKConfigurations
{
  selfCopy = self;
  MultiSportWorkoutTracker.allHKConfigurations.getter();

  _sSo17OS_dispatch_queueCMaTm_12(0, &lazy cache variable for type metadata for HKWorkoutConfiguration, 0x277CCDC38);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setEndWorkoutTimer:(id)timer
{
  v4 = *(self + OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer);
  *(self + OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer) = timer;
  timerCopy = timer;
}

- (NSDictionary)autoTransitionMetadata
{
  selfCopy = self;
  MultiSportWorkoutTracker.autoTransitionMetadata.getter();

  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSArray)metadataKeysToDelete
{
  specialized MultiSportWorkoutTracker.metadataKeysToDelete.getter();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)addObserver:(id)observer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  MultiSportWorkoutTracker.addObserver(_:)(observer);
  swift_unknownObjectRelease();
}

- (void)manuallyMoveToNextActivityWithMultisportTransitions:(id)transitions
{
  transitionsCopy = transitions;
  selfCopy = self;
  MultiSportWorkoutTracker.manuallyMoveToNextActivity(multisportTransitions:)();
}

- (void)startEndWorkoutTimerFromDate:(id)date
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  MultiSportWorkoutTracker.startEndWorkoutTimer(fromDate:)();

  (*(v5 + 8))(v8, v4);
}

- (void)cancelEndWorkoutTimer
{
  v3 = OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer;
  v4 = *(self + OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer);
  selfCopy = self;
  [v4 invalidate];
  v6 = *(self + v3);
  *(self + v3) = 0;
}

- (void)handleSuggestedConfiguration:(id)configuration date:(id)date
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  configurationCopy = configuration;
  selfCopy = self;
  MultiSportWorkoutTracker.handleSuggestedConfiguration(_:date:)(configurationCopy, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)recoverStateWithSessionActivity:(id)activity
{
  activityCopy = activity;
  selfCopy = self;
  builder = [activityCopy builder];
  if (builder)
  {
    v6 = builder;
    workoutActivities = [v6 workoutActivities];
    _sSo17OS_dispatch_queueCMaTm_12(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    metadata = [v6 metadata];
    v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    MultiSportWorkoutTracker.recoverState(workoutActivities:builderMetadata:)(v8, v10);
  }
}

- (void)recoverStateWithWorkoutActivities:(id)activities builderMetadata:(id)metadata
{
  _sSo17OS_dispatch_queueCMaTm_12(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  MultiSportWorkoutTracker.recoverState(workoutActivities:builderMetadata:)(v5, v6);
}

- (void)notifyObserversValuesChanged
{
  selfCopy = self;
  MultiSportWorkoutTracker.notifyObserversValuesChanged()();
}

- (WOMultiSportWorkoutTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end