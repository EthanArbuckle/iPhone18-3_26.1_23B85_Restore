@interface WorkoutAlertInterval
- (_TtC11WorkoutCore20WorkoutAlertInterval)init;
- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager;
- (id)spokenDescriptionWithFormattingManager:(id)manager;
- (id)spokenUserDataWithFormattingManager:(id)manager;
@end

@implementation WorkoutAlertInterval

- (id)spokenUserDataWithFormattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  WorkoutAlertInterval.spokenUserData(with:)(managerCopy);

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  specialized WorkoutAlertInterval.localizedProgressDescription(with:formattingManager:)(managerCopy);

  type metadata accessor for NLWorkoutAlertUnitAnnotatedString();
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (id)spokenDescriptionWithFormattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  if (WorkoutAlertInterval.internalType.getter())
  {
    v6 = specialized WorkoutAlertInterval.endSpokenDescription()();
  }

  else
  {
    v6 = WorkoutAlertInterval.upcomingSpokenDescription(formattingManager:)(managerCopy);
  }

  v8 = v6;
  v9 = v7;

  v10 = MEMORY[0x20F2E6C00](v8, v9);

  return v10;
}

- (_TtC11WorkoutCore20WorkoutAlertInterval)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end