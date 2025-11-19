@interface TrainerTimerStartEventAlert
- (NSString)description;
- (_TtC11WorkoutCore27TrainerTimerStartEventAlert)init;
@end

@implementation TrainerTimerStartEventAlert

- (NSString)description
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC11WorkoutCore27TrainerTimerStartEventAlert_startTime);
  v3 = self;
  v4 = Double.description.getter();
  MEMORY[0x20F2E6D80](v4);

  v5 = MEMORY[0x20F2E6C00](0xD000000000000027, 0x800000020B456190);

  return v5;
}

- (_TtC11WorkoutCore27TrainerTimerStartEventAlert)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end