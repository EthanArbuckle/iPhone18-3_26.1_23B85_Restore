@interface EndWorkoutIntentHandler
- (_TtC12SeymourMedia23EndWorkoutIntentHandler)init;
- (void)handleEndWorkout:(id)workout completion:(id)completion;
@end

@implementation EndWorkoutIntentHandler

- (_TtC12SeymourMedia23EndWorkoutIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleEndWorkout:(id)workout completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  workoutCopy = workout;
  selfCopy = self;
  sub_20C4FE130(sub_20C4FE11C, v7);
}

@end