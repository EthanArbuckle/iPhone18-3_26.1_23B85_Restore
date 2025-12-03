@interface ZonesAccumulator
- (BOOL)disabledForSession;
- (_TtC11WorkoutCore16ZonesAccumulator)initWithBuilder:(id)builder;
- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler;
- (void)accumulatorDidStop;
- (void)setDisabledForSession:(BOOL)session;
- (void)workoutBuilderDidCollectEvent;
@end

@implementation ZonesAccumulator

- (BOOL)disabledForSession
{
  v3 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_disabledForSession;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setDisabledForSession:(BOOL)session
{
  sessionCopy = session;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_disabledForSession;
  swift_beginAccess();
  v11 = *(&self->super.super.super.isa + v10);
  *(&self->super.super.super.isa + v10) = sessionCopy;
  if (v11 != sessionCopy)
  {
    selfCopy = self;
    if (sessionCopy)
    {
      ZonesAccumulator.stopQuery()();
    }

    else
    {
      Date.init()();
      ZonesAccumulator.startQuery(startDate:)();

      (*(v6 + 8))(v9, v5);
    }
  }
}

- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
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
    v14 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  else
  {
    v14 = 0;
  }

  selfCopy = self;
  specialized ZonesAccumulator.accumulatorDidStart(withStart:handler:)(v10);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v14);

  outlined destroy of Date?(v10);
}

- (void)accumulatorDidStop
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activityStartDate;
  swift_beginAccess();
  selfCopy = self;
  outlined assign with take of Date?(v6, self + v8);
  swift_endAccess();
  ZonesAccumulator.stopQuery()();
}

- (void)workoutBuilderDidCollectEvent
{
  selfCopy = self;
  ZonesAccumulator.workoutBuilderDidCollectEvent()();
}

- (_TtC11WorkoutCore16ZonesAccumulator)initWithBuilder:(id)builder
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end