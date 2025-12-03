@interface WorkoutAlertLapChange
- (WorkoutAlertLapChange)init;
- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager;
- (id)spokenDescriptionWithFormattingManager:(id)manager;
- (id)spokenUserDataWithFormattingManager:(id)manager;
@end

@implementation WorkoutAlertLapChange

- (id)spokenUserDataWithFormattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  WorkoutAlertLapChange.spokenUserData(with:)(managerCopy);

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  specialized WorkoutAlertLapChange.localizedProgressDescription(with:formattingManager:)();

  type metadata accessor for NLWorkoutAlertUnitAnnotatedString();
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (id)spokenDescriptionWithFormattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  v6 = WorkoutAlertLapChange.spokenDescription(with:)(managerCopy);
  v8 = v7;

  v9 = MEMORY[0x20F2E6C00](v6, v8);

  return v9;
}

- (WorkoutAlertLapChange)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end