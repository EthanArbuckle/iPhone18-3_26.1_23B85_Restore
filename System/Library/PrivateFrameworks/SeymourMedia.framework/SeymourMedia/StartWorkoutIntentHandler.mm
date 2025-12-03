@interface StartWorkoutIntentHandler
- (_TtC12SeymourMedia25StartWorkoutIntentHandler)init;
- (void)handleStartWorkout:(id)workout completion:(id)completion;
@end

@implementation StartWorkoutIntentHandler

- (_TtC12SeymourMedia25StartWorkoutIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleStartWorkout:(id)workout completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  workoutCopy = workout;
  selfCopy = self;
  sub_20C5686D8(workoutCopy, sub_20C4FE11C, v7);
}

@end