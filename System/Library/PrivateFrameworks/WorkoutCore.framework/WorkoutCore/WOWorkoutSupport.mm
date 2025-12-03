@interface WOWorkoutSupport
+ (BOOL)shouldTrackPaceWithOdometerFor:(id)for;
- (WOWorkoutSupport)init;
@end

@implementation WOWorkoutSupport

+ (BOOL)shouldTrackPaceWithOdometerFor:(id)for
{
  forCopy = for;
  identifier = [forCopy identifier];
  if (identifier == 71 || identifier == 70)
  {

    return 1;
  }

  else if (identifier == 13)
  {
    isIndoor = [forCopy isIndoor];

    return isIndoor ^ 1;
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