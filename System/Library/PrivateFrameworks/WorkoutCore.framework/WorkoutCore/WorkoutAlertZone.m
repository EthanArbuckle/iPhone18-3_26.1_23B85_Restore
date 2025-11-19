@interface WorkoutAlertZone
- (_TtC11WorkoutCore16WorkoutAlertZone)init;
- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)a3 formattingManager:(id)a4;
- (id)spokenDescriptionWithFormattingManager:(id)a3;
- (id)spokenUserDataWithFormattingManager:(id)a3;
@end

@implementation WorkoutAlertZone

- (id)spokenUserDataWithFormattingManager:(id)a3
{
  v4 = a3;
  v5 = self;
  WorkoutAlertZone.spokenUserData(with:)(v4);

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)a3 formattingManager:(id)a4
{
  v6 = a4;
  v7 = self;
  WorkoutAlertZone.localizedProgressDescription(with:formattingManager:)(a3, v6);

  _sSo23FIUIWorkoutActivityTypeCMaTm_1(0, &lazy cache variable for type metadata for NLWorkoutAlertUnitAnnotatedString, off_277D86CF0);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)spokenDescriptionWithFormattingManager:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = WorkoutAlertZone.spokenDescription(with:)(v4);
  v8 = v7;

  v9 = MEMORY[0x20F2E6C00](v6, v8);

  return v9;
}

- (_TtC11WorkoutCore16WorkoutAlertZone)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end