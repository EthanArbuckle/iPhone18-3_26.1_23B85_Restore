@interface ResumeWorkoutIntentHandler
- (_TtC12SeymourMedia26ResumeWorkoutIntentHandler)init;
- (void)handleResumeWorkout:(id)workout completion:(id)completion;
@end

@implementation ResumeWorkoutIntentHandler

- (_TtC12SeymourMedia26ResumeWorkoutIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleResumeWorkout:(id)workout completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  workoutCopy = workout;
  selfCopy = self;
  sub_20C58A9EC(sub_20C4FE11C, v7);
}

@end