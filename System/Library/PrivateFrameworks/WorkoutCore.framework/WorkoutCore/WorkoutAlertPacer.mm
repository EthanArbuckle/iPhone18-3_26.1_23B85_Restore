@interface WorkoutAlertPacer
- (_TtC11WorkoutCore17WorkoutAlertPacer)init;
- (id)spokenDescriptionWithFormattingManager:(id)manager;
- (id)spokenUserDataWithFormattingManager:(id)manager;
@end

@implementation WorkoutAlertPacer

- (id)spokenDescriptionWithFormattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  v6 = WorkoutAlertPacer.spokenDescription(with:)(managerCopy);
  v8 = v7;

  v9 = MEMORY[0x20F2E6C00](v6, v8);

  return v9;
}

- (id)spokenUserDataWithFormattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  WorkoutAlertPacer.spokenUserData(with:)(managerCopy);

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (_TtC11WorkoutCore17WorkoutAlertPacer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end