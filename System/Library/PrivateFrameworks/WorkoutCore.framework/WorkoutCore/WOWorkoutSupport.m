@interface WOWorkoutSupport
+ (BOOL)shouldTrackPaceWithOdometerFor:(id)a3;
- (WOWorkoutSupport)init;
@end

@implementation WOWorkoutSupport

+ (BOOL)shouldTrackPaceWithOdometerFor:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  if (v4 == 71 || v4 == 70)
  {

    return 1;
  }

  else if (v4 == 13)
  {
    v5 = [v3 isIndoor];

    return v5 ^ 1;
  }

  else
  {

    return 0;
  }
}

- (WOWorkoutSupport)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WorkoutSupport();
  return [(WOWorkoutSupport *)&v3 init];
}

@end