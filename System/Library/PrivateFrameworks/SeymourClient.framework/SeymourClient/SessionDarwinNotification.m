@interface SessionDarwinNotification
+ (NSString)sessionGuidedRunWorkoutAppRequirementConfirmation;
+ (NSString)sessionGuidedWalkWorkoutAppRequirementConfirmation;
+ (NSString)sessionMindAppRequirementConfirmation;
+ (NSString)sessionUpdated;
+ (NSString)sessionWorkoutAppRequirementConfirmation;
- (_TtC13SeymourClient25SessionDarwinNotification)init;
@end

@implementation SessionDarwinNotification

+ (NSString)sessionUpdated
{
  v2 = sub_1B4F67F64();

  return v2;
}

+ (NSString)sessionMindAppRequirementConfirmation
{
  v2 = sub_1B4F67F64();

  return v2;
}

+ (NSString)sessionWorkoutAppRequirementConfirmation
{
  v2 = sub_1B4F67F64();

  return v2;
}

+ (NSString)sessionGuidedRunWorkoutAppRequirementConfirmation
{
  v2 = sub_1B4F67F64();

  return v2;
}

+ (NSString)sessionGuidedWalkWorkoutAppRequirementConfirmation
{
  v2 = sub_1B4F67F64();

  return v2;
}

- (_TtC13SeymourClient25SessionDarwinNotification)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SessionDarwinNotification();
  return [(SessionDarwinNotification *)&v3 init];
}

@end