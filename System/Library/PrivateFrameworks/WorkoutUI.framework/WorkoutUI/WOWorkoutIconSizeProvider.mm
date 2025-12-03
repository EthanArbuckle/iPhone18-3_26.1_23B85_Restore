@interface WOWorkoutIconSizeProvider
+ (int64_t)iconSizeWithUseSmallerIcon:(BOOL)icon;
- (WOWorkoutIconSizeProvider)init;
@end

@implementation WOWorkoutIconSizeProvider

+ (int64_t)iconSizeWithUseSmallerIcon:(BOOL)icon
{
  if (icon)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (WOWorkoutIconSizeProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WorkoutIconSizeProvider();
  return [(WOWorkoutIconSizeProvider *)&v3 init];
}

@end