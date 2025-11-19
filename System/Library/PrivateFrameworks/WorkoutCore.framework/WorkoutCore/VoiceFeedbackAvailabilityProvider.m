@interface VoiceFeedbackAvailabilityProvider
- (_TtC11WorkoutCore33VoiceFeedbackAvailabilityProvider)init;
- (_TtC11WorkoutCore33VoiceFeedbackAvailabilityProvider)initWithWorkoutExperienceTypeBlock:(id)a3 workoutUltraModeBlock:(id)a4;
@end

@implementation VoiceFeedbackAvailabilityProvider

- (_TtC11WorkoutCore33VoiceFeedbackAvailabilityProvider)initWithWorkoutExperienceTypeBlock:(id)a3 workoutUltraModeBlock:(id)a4
{
  v6 = _Block_copy(a3);
  v7 = _Block_copy(a4);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = (self + OBJC_IVAR____TtC11WorkoutCore33VoiceFeedbackAvailabilityProvider_workoutExperienceTypeBlock);
  *v10 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (@unowned NLWorkoutExperienceType);
  v10[1] = v8;
  v11 = (self + OBJC_IVAR____TtC11WorkoutCore33VoiceFeedbackAvailabilityProvider_workoutUltraModeBlock);
  *v11 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (@unowned ObjCBool);
  v11[1] = v9;
  v13.receiver = self;
  v13.super_class = type metadata accessor for VoiceFeedbackAvailabilityProvider();
  return [(VoiceFeedbackAvailabilityProvider *)&v13 init];
}

- (_TtC11WorkoutCore33VoiceFeedbackAvailabilityProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end