@interface LiveWorkoutContextManager
- (_TtC11WorkoutCore25LiveWorkoutContextManager)init;
- (void)activityRingsUpdatedWithSummary:(id)summary;
- (void)completedActivityRing:(int64_t)ring activitySummary:(id)summary;
- (void)dataProvider:(id)provider didUpdate:(unint64_t)update;
- (void)splitComplete:(id)complete currentSplitEvents:(id)events;
- (void)workout:(id)workout didMoveToState:(int64_t)state;
@end

@implementation LiveWorkoutContextManager

- (_TtC11WorkoutCore25LiveWorkoutContextManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dataProvider:(id)provider didUpdate:(unint64_t)update
{
  swift_unknownObjectRetain();
  selfCopy = self;
  LiveWorkoutContextManager.dataProvider(_:didUpdate:)(provider, update);
  swift_unknownObjectRelease();
}

- (void)splitComplete:(id)complete currentSplitEvents:(id)events
{
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  completeCopy = complete;
  selfCopy = self;
  LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:)(completeCopy, v6);
}

- (void)activityRingsUpdatedWithSummary:(id)summary
{
  summaryCopy = summary;
  selfCopy = self;
  LiveWorkoutContextManager.activityRingsUpdated(with:)(summaryCopy);
}

- (void)completedActivityRing:(int64_t)ring activitySummary:(id)summary
{
  summaryCopy = summary;
  selfCopy = self;
  LiveWorkoutContextManager.completedActivityRing(_:activitySummary:)(ring, summaryCopy);
}

- (void)workout:(id)workout didMoveToState:(int64_t)state
{
  workoutCopy = workout;
  selfCopy = self;
  LiveWorkoutContextManager.workout(_:didMoveToState:)(workoutCopy, state);
}

@end