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
- (void)addObserver:(id)a3;
- (void)cancelEndWorkoutTimer;
- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4;
- (void)handleSuggestedConfiguration:(id)a3 date:(id)a4;
- (void)manuallyMoveToNextActivityWithMultisportTransitions:(id)a3;
- (void)notifyObserversValuesChanged;
- (void)recoverStateWithSessionActivity:(id)a3;
- (void)recoverStateWithWorkoutActivities:(id)a3 builderMetadata:(id)a4;
- (void)setEndWorkoutTimer:(id)a3;
- (void)setFirstActivityStarted:(BOOL)a3;
- (void)startEndWorkoutTimerFromDate:(id)a3;
- (void)workout:(id)a3 didBeginNewActivity:(id)a4;
- (void)workout:(id)a3 didMoveToState:(int64_t)a4;
@end

@implementation WOMultiSportWorkoutTracker

- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  MultiSportWorkoutTracker.dataProvider(_:didUpdate:)(a3, a4);
  swift_unknownObjectRelease();
}

- (void)workout:(id)a3 didMoveToState:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  specialized MultiSportWorkoutTracker.workout(_:didMoveToState:)(a4);
}

- (void)workout:(id)a3 didBeginNewActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized MultiSportWorkoutTracker.workout(_:didBeginNewActivity:)(v7);
}

- (BOOL)firstActivityStarted
{
  v3 = OBJC_IVAR___WOMultiSportWorkoutTracker_firstActivityStarted;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFirstActivityStarted:(BOOL)a3
{
  v5 = OBJC_IVAR___WOMultiSportWorkoutTracker_firstActivityStarted;
  swift_beginAccess();
  *(self + v5) = a3;
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
  v2 = self;
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
  v2 = self;
  MultiSportWorkoutTracker.allHKConfigurations.getter();

  _sSo17OS_dispatch_queueCMaTm_12(0, &lazy cache variable for type metadata for HKWorkoutConfiguration, 0x277CCDC38);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setEndWorkoutTimer:(id)a3
{
  v4 = *(self + OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer);
  *(self + OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer) = a3;
  v3 = a3;
}

- (NSDictionary)autoTransitionMetadata
{
  v2 = self;
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

- (void)addObserver:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  MultiSportWorkoutTracker.addObserver(_:)(a3);
  swift_unknownObjectRelease();
}

- (void)manuallyMoveToNextActivityWithMultisportTransitions:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiSportWorkoutTracker.manuallyMoveToNextActivity(multisportTransitions:)();
}

- (void)startEndWorkoutTimerFromDate:(id)a3
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  MultiSportWorkoutTracker.startEndWorkoutTimer(fromDate:)();

  (*(v5 + 8))(v8, v4);
}

- (void)cancelEndWorkoutTimer
{
  v3 = OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer;
  v4 = *(self + OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer);
  v5 = self;
  [v4 invalidate];
  v6 = *(self + v3);
  *(self + v3) = 0;
}

- (void)handleSuggestedConfiguration:(id)a3 date:(id)a4
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  MultiSportWorkoutTracker.handleSuggestedConfiguration(_:date:)(v11, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)recoverStateWithSessionActivity:(id)a3
{
  v4 = a3;
  v11 = self;
  v5 = [v4 builder];
  if (v5)
  {
    v6 = v5;
    v7 = [v6 workoutActivities];
    _sSo17OS_dispatch_queueCMaTm_12(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = [v6 metadata];
    v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    MultiSportWorkoutTracker.recoverState(workoutActivities:builderMetadata:)(v8, v10);
  }
}

- (void)recoverStateWithWorkoutActivities:(id)a3 builderMetadata:(id)a4
{
  _sSo17OS_dispatch_queueCMaTm_12(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self;
  MultiSportWorkoutTracker.recoverState(workoutActivities:builderMetadata:)(v5, v6);
}

- (void)notifyObserversValuesChanged
{
  v2 = self;
  MultiSportWorkoutTracker.notifyObserversValuesChanged()();
}

- (WOMultiSportWorkoutTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end