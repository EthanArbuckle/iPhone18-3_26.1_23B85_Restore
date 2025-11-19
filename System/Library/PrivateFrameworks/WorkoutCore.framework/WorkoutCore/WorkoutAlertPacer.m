@interface WorkoutAlertPacer
- (_TtC11WorkoutCore17WorkoutAlertPacer)init;
- (id)spokenDescriptionWithFormattingManager:(id)a3;
- (id)spokenUserDataWithFormattingManager:(id)a3;
@end

@implementation WorkoutAlertPacer

- (id)spokenDescriptionWithFormattingManager:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = WorkoutAlertPacer.spokenDescription(with:)(v4);
  v8 = v7;

  v9 = MEMORY[0x20F2E6C00](v6, v8);

  return v9;
}

- (id)spokenUserDataWithFormattingManager:(id)a3
{
  v4 = a3;
  v5 = self;
  WorkoutAlertPacer.spokenUserData(with:)(v4);

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