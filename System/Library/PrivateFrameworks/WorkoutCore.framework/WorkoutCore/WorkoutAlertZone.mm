@interface WorkoutAlertZone
- (_TtC11WorkoutCore16WorkoutAlertZone)init;
- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager;
- (id)spokenDescriptionWithFormattingManager:(id)manager;
- (id)spokenUserDataWithFormattingManager:(id)manager;
@end

@implementation WorkoutAlertZone

- (id)spokenUserDataWithFormattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  WorkoutAlertZone.spokenUserData(with:)(managerCopy);

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  WorkoutAlertZone.localizedProgressDescription(with:formattingManager:)(style, managerCopy);

  _sSo23FIUIWorkoutActivityTypeCMaTm_1(0, &lazy cache variable for type metadata for NLWorkoutAlertUnitAnnotatedString, off_277D86CF0);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)spokenDescriptionWithFormattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  v6 = WorkoutAlertZone.spokenDescription(with:)(managerCopy);
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