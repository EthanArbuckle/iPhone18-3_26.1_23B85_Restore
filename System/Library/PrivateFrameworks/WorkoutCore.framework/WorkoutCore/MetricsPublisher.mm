@interface MetricsPublisher
- (void)activityHeartRateDidBecomeStale:(id)stale;
- (void)activityRingsUpdatedWithSummary:(id)summary;
- (void)dataProvider:(id)provider didChangeActivityTypeTo:(id)to;
- (void)dataProvider:(id)provider didUpdate:(unint64_t)update;
- (void)dataProvider:(id)provider didUpdateIsGPSAvailable:(BOOL)available;
- (void)dataProvider:(id)provider didUpdateLocations:(id)locations;
- (void)dataProvider:(id)provider didUpdateRoutePosition:(id)position;
- (void)didBeginNewStepWithDate:(id)date stepIndex:(id)index stepCount:(int64_t)count;
- (void)didCancelAutomaticTransition;
- (void)didEnterManualTransitionWithDate:(id)date;
- (void)didEnterNewLeg:(id)leg date:(id)date;
- (void)didFinishIntervals:(double)intervals;
- (void)didRecover:(id)recover;
- (void)didRestoreActivityType:(id)type startDate:(id)date autoTransitionStartDate:(id)startDate autoTransitionUUID:(id)d;
- (void)didUpdate:(id)update;
- (void)didUpdateLastLegValues:(id)values;
- (void)enterAutomaticTransitionWithSuggestedConfig:(id)config date:(id)date;
- (void)pacerDistanceGoalCompleteIn:(double)in;
- (void)setDidWinRace:(BOOL)race;
- (void)setRoutePoints:(id)points;
- (void)wheelchairUseCharacteristicCache:(id)cache wheelchairUsageDidChange:(BOOL)change;
- (void)workout:(id)workout didBeginNewActivity:(id)activity;
- (void)workout:(id)workout didMoveToState:(int64_t)state;
- (void)workout:(id)workout pausedReasonsDidUpdate:(unint64_t)update;
@end

@implementation MetricsPublisher

- (void)workout:(id)workout didBeginNewActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  selfCopy = self;
  MetricsPublisher.workout(_:didBeginNewActivity:)(workoutCopy, activityCopy);
}

- (void)activityRingsUpdatedWithSummary:(id)summary
{
  summaryCopy = summary;
  selfCopy = self;
  MetricsPublisher.activityRingsUpdated(with:)(summaryCopy);
}

- (void)setRoutePoints:(id)points
{
  _sSo17OS_dispatch_queueCMaTm_10(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  MetricsPublisher.setRoutePoints(_:)(v4);
}

- (void)didUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  MetricsPublisher.didUpdate(_:)(updateCopy);
}

- (void)setDidWinRace:(BOOL)race
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_racePositionStatePublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

- (void)didBeginNewStepWithDate:(id)date stepIndex:(id)index stepCount:(int64_t)count
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  indexCopy = index;
  selfCopy = self;
  MetricsPublisher.didBeginNewStep(date:stepIndex:stepCount:)(v12, index, count);

  (*(v9 + 8))(v12, v8);
}

- (void)didRecover:(id)recover
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_intervalsMetricsPublisher);
  (*(v12 + 16))(v10, v15, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v10, v8);
  selfCopy = self;

  static Published.subscript.setter();
  outlined destroy of Date?(v10);
  (*(v12 + 8))(v15, v11);
}

- (void)didFinishIntervals:(double)intervals
{
  selfCopy = self;
  MetricsPublisher.didFinishIntervals(totalTime:)(intervals);
}

- (void)didEnterNewLeg:(id)leg date:(id)date
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  if (date)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  legCopy = leg;
  selfCopy = self;
  MetricsPublisher.didEnterNewLeg(_:date:)(legCopy, v10);

  _s10Foundation4DateVSgWOhTm_5(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

- (void)didRestoreActivityType:(id)type startDate:(id)date autoTransitionStartDate:(id)startDate autoTransitionUUID:(id)d
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  if (startDate)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = 1;
  (*(v19 + 56))(v17, v23, 1, v18);
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = 0;
  }

  v25 = type metadata accessor for UUID();
  (*(*(v25 - 8) + 56))(v13, v24, 1, v25);
  typeCopy = type;
  selfCopy = self;
  MetricsPublisher.didRestoreActivityType(_:startDate:autoTransitionStartDate:autoTransitionUUID:)(typeCopy, v22);

  _s10Foundation4DateVSgWOhTm_5(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  _s10Foundation4DateVSgWOhTm_5(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(v19 + 8))(v22, v18);
}

- (void)enterAutomaticTransitionWithSuggestedConfig:(id)config date:(id)date
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  configCopy = config;
  selfCopy = self;
  specialized MetricsPublisher.enterAutomaticTransition(suggestedConfig:date:)(v10);

  (*(v7 + 8))(v10, v6);
}

- (void)didEnterManualTransitionWithDate:(id)date
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  MetricsPublisher.didEnterManualTransition(date:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)didCancelAutomaticTransition
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_multisportMetricsPublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

- (void)didUpdateLastLegValues:(id)values
{
  valuesCopy = values;
  selfCopy = self;
  MetricsPublisher.didUpdateLastLegValues(_:)(valuesCopy);
}

- (void)wheelchairUseCharacteristicCache:(id)cache wheelchairUsageDidChange:(BOOL)change
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_activitySummaryMetricsPublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

- (void)workout:(id)workout didMoveToState:(int64_t)state
{
  workoutCopy = workout;
  selfCopy = self;
  MetricsPublisher.workout(_:didMoveToState:)(workoutCopy, state);
}

- (void)workout:(id)workout pausedReasonsDidUpdate:(unint64_t)update
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

- (void)dataProvider:(id)provider didUpdate:(unint64_t)update
{
  swift_unknownObjectRetain();
  selfCopy = self;
  MetricsPublisher.dataProvider(_:didUpdate:)(provider, update);
  swift_unknownObjectRelease();
}

- (void)dataProvider:(id)provider didUpdateLocations:(id)locations
{
  type metadata accessor for CLLocation();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_locationPositionPublisher);
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  v8 = static Published.subscript.modify();
  specialized Array.append<A>(contentsOf:)(v5);
  v8(&v9, 0);
}

- (void)dataProvider:(id)provider didUpdateRoutePosition:(id)position
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_locationPositionPublisher);
  v5 = *(position + OBJC_IVAR___WORacePosition_racePosition);
  v6 = *(position + OBJC_IVAR___WORacePosition_racePosition + 8);
  v7 = *(position + OBJC_IVAR___WORacePosition_racePosition + 12);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

- (void)pacerDistanceGoalCompleteIn:(double)in
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.setter();
}

- (void)dataProvider:(id)provider didUpdateIsGPSAvailable:(BOOL)available
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

- (void)activityHeartRateDidBecomeStale:(id)stale
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

- (void)dataProvider:(id)provider didChangeActivityTypeTo:(id)to
{
  swift_unknownObjectRetain();
  toCopy = to;
  selfCopy = self;
  MetricsPublisher.dataProvider(_:didChangeActivityTypeTo:)(provider, toCopy);
  swift_unknownObjectRelease();
}

@end