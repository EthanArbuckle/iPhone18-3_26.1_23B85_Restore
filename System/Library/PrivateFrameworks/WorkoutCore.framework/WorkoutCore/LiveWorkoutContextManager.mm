@interface LiveWorkoutContextManager
- (_TtC11WorkoutCore25LiveWorkoutContextManager)init;
- (void)activityRingsUpdatedWithSummary:(id)a3;
- (void)completedActivityRing:(int64_t)a3 activitySummary:(id)a4;
- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4;
- (void)splitComplete:(id)a3 currentSplitEvents:(id)a4;
- (void)workout:(id)a3 didMoveToState:(int64_t)a4;
@end

@implementation LiveWorkoutContextManager

- (_TtC11WorkoutCore25LiveWorkoutContextManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  LiveWorkoutContextManager.dataProvider(_:didUpdate:)(a3, a4);
  swift_unknownObjectRelease();
}

- (void)splitComplete:(id)a3 currentSplitEvents:(id)a4
{
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:)(v7, v6);
}

- (void)activityRingsUpdatedWithSummary:(id)a3
{
  v4 = a3;
  v5 = self;
  LiveWorkoutContextManager.activityRingsUpdated(with:)(v4);
}

- (void)completedActivityRing:(int64_t)a3 activitySummary:(id)a4
{
  v6 = a4;
  v7 = self;
  LiveWorkoutContextManager.completedActivityRing(_:activitySummary:)(a3, v6);
}

- (void)workout:(id)a3 didMoveToState:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  LiveWorkoutContextManager.workout(_:didMoveToState:)(v6, a4);
}

@end