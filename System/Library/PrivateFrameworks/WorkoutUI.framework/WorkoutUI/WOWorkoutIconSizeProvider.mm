@interface WOWorkoutIconSizeProvider
+ (int64_t)iconSizeWithUseSmallerIcon:(BOOL)a3;
- (WOWorkoutIconSizeProvider)init;
@end

@implementation WOWorkoutIconSizeProvider

+ (int64_t)iconSizeWithUseSmallerIcon:(BOOL)a3
{
  if (a3)
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