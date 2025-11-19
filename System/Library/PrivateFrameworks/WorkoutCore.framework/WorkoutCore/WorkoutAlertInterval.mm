@interface WorkoutAlertInterval
- (_TtC11WorkoutCore20WorkoutAlertInterval)init;
- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)a3 formattingManager:(id)a4;
- (id)spokenDescriptionWithFormattingManager:(id)a3;
- (id)spokenUserDataWithFormattingManager:(id)a3;
@end

@implementation WorkoutAlertInterval

- (id)spokenUserDataWithFormattingManager:(id)a3
{
  v4 = a3;
  v5 = self;
  WorkoutAlertInterval.spokenUserData(with:)(v4);

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)a3 formattingManager:(id)a4
{
  v5 = a4;
  v6 = self;
  specialized WorkoutAlertInterval.localizedProgressDescription(with:formattingManager:)(v5);

  type metadata accessor for NLWorkoutAlertUnitAnnotatedString();
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (id)spokenDescriptionWithFormattingManager:(id)a3
{
  v4 = a3;
  v5 = self;
  if (WorkoutAlertInterval.internalType.getter())
  {
    v6 = specialized WorkoutAlertInterval.endSpokenDescription()();
  }

  else
  {
    v6 = WorkoutAlertInterval.upcomingSpokenDescription(formattingManager:)(v4);
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