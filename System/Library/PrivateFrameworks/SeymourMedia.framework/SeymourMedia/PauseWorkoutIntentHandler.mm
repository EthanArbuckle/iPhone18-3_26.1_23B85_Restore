@interface PauseWorkoutIntentHandler
- (_TtC12SeymourMedia25PauseWorkoutIntentHandler)init;
- (void)handlePauseWorkout:(id)workout completion:(id)completion;
@end

@implementation PauseWorkoutIntentHandler

- (_TtC12SeymourMedia25PauseWorkoutIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handlePauseWorkout:(id)workout completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  workoutCopy = workout;
  selfCopy = self;
  sub_20C522694(sub_20C4FE11C, v7);
}

@end