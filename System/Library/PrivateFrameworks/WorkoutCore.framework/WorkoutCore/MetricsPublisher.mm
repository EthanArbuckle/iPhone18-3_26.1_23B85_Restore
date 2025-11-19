@interface MetricsPublisher
- (void)activityHeartRateDidBecomeStale:(id)a3;
- (void)activityRingsUpdatedWithSummary:(id)a3;
- (void)dataProvider:(id)a3 didChangeActivityTypeTo:(id)a4;
- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4;
- (void)dataProvider:(id)a3 didUpdateIsGPSAvailable:(BOOL)a4;
- (void)dataProvider:(id)a3 didUpdateLocations:(id)a4;
- (void)dataProvider:(id)a3 didUpdateRoutePosition:(id)a4;
- (void)didBeginNewStepWithDate:(id)a3 stepIndex:(id)a4 stepCount:(int64_t)a5;
- (void)didCancelAutomaticTransition;
- (void)didEnterManualTransitionWithDate:(id)a3;
- (void)didEnterNewLeg:(id)a3 date:(id)a4;
- (void)didFinishIntervals:(double)a3;
- (void)didRecover:(id)a3;
- (void)didRestoreActivityType:(id)a3 startDate:(id)a4 autoTransitionStartDate:(id)a5 autoTransitionUUID:(id)a6;
- (void)didUpdate:(id)a3;
- (void)didUpdateLastLegValues:(id)a3;
- (void)enterAutomaticTransitionWithSuggestedConfig:(id)a3 date:(id)a4;
- (void)pacerDistanceGoalCompleteIn:(double)a3;
- (void)setDidWinRace:(BOOL)a3;
- (void)setRoutePoints:(id)a3;
- (void)wheelchairUseCharacteristicCache:(id)a3 wheelchairUsageDidChange:(BOOL)a4;
- (void)workout:(id)a3 didBeginNewActivity:(id)a4;
- (void)workout:(id)a3 didMoveToState:(int64_t)a4;
- (void)workout:(id)a3 pausedReasonsDidUpdate:(unint64_t)a4;
@end

@implementation MetricsPublisher

- (void)workout:(id)a3 didBeginNewActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  MetricsPublisher.workout(_:didBeginNewActivity:)(v6, v7);
}

- (void)activityRingsUpdatedWithSummary:(id)a3
{
  v4 = a3;
  v5 = self;
  MetricsPublisher.activityRingsUpdated(with:)(v4);
}

- (void)setRoutePoints:(id)a3
{
  _sSo17OS_dispatch_queueCMaTm_10(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  MetricsPublisher.setRoutePoints(_:)(v4);
}

- (void)didUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  MetricsPublisher.didUpdate(_:)(v4);
}

- (void)setDidWinRace:(BOOL)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_racePositionStatePublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

- (void)didBeginNewStepWithDate:(id)a3 stepIndex:(id)a4 stepCount:(int64_t)a5
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a4;
  v14 = self;
  MetricsPublisher.didBeginNewStep(date:stepIndex:stepCount:)(v12, a4, a5);

  (*(v9 + 8))(v12, v8);
}

- (void)didRecover:(id)a3
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
  v17 = self;

  static Published.subscript.setter();
  outlined destroy of Date?(v10);
  (*(v12 + 8))(v15, v11);
}

- (void)didFinishIntervals:(double)a3
{
  v4 = self;
  MetricsPublisher.didFinishIntervals(totalTime:)(a3);
}

- (void)didEnterNewLeg:(id)a3 date:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  if (a4)
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

  v13 = a3;
  v14 = self;
  MetricsPublisher.didEnterNewLeg(_:date:)(v13, v10);

  _s10Foundation4DateVSgWOhTm_5(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

- (void)didRestoreActivityType:(id)a3 startDate:(id)a4 autoTransitionStartDate:(id)a5 autoTransitionUUID:(id)a6
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
  if (a5)
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
  if (a6)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = 0;
  }

  v25 = type metadata accessor for UUID();
  (*(*(v25 - 8) + 56))(v13, v24, 1, v25);
  v26 = a3;
  v27 = self;
  MetricsPublisher.didRestoreActivityType(_:startDate:autoTransitionStartDate:autoTransitionUUID:)(v26, v22);

  _s10Foundation4DateVSgWOhTm_5(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  _s10Foundation4DateVSgWOhTm_5(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(v19 + 8))(v22, v18);
}

- (void)enterAutomaticTransitionWithSuggestedConfig:(id)a3 date:(id)a4
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  specialized MetricsPublisher.enterAutomaticTransition(suggestedConfig:date:)(v10);

  (*(v7 + 8))(v10, v6);
}

- (void)didEnterManualTransitionWithDate:(id)a3
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
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

- (void)didUpdateLastLegValues:(id)a3
{
  v4 = a3;
  v5 = self;
  MetricsPublisher.didUpdateLastLegValues(_:)(v4);
}

- (void)wheelchairUseCharacteristicCache:(id)a3 wheelchairUsageDidChange:(BOOL)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_activitySummaryMetricsPublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

- (void)workout:(id)a3 didMoveToState:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  MetricsPublisher.workout(_:didMoveToState:)(v6, a4);
}

- (void)workout:(id)a3 pausedReasonsDidUpdate:(unint64_t)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  MetricsPublisher.dataProvider(_:didUpdate:)(a3, a4);
  swift_unknownObjectRelease();
}

- (void)dataProvider:(id)a3 didUpdateLocations:(id)a4
{
  type metadata accessor for CLLocation();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_locationPositionPublisher);
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = self;
  v8 = static Published.subscript.modify();
  specialized Array.append<A>(contentsOf:)(v5);
  v8(&v9, 0);
}

- (void)dataProvider:(id)a3 didUpdateRoutePosition:(id)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_locationPositionPublisher);
  v5 = *(a4 + OBJC_IVAR___WORacePosition_racePosition);
  v6 = *(a4 + OBJC_IVAR___WORacePosition_racePosition + 8);
  v7 = *(a4 + OBJC_IVAR___WORacePosition_racePosition + 12);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

- (void)pacerDistanceGoalCompleteIn:(double)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  static Published.subscript.setter();
}

- (void)dataProvider:(id)a3 didUpdateIsGPSAvailable:(BOOL)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

- (void)activityHeartRateDidBecomeStale:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

- (void)dataProvider:(id)a3 didChangeActivityTypeTo:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  MetricsPublisher.dataProvider(_:didChangeActivityTypeTo:)(a3, v7);
  swift_unknownObjectRelease();
}

@end