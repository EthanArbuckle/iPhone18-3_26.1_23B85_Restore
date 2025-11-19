@interface NLWorkoutDemoUtilities
+ (id)estimatedCaloriesFor:(id)a3 duration:(double)a4 distance:(id)a5;
+ (id)workoutDemoSession;
- (NLWorkoutDemoUtilities)init;
@end

@implementation NLWorkoutDemoUtilities

+ (id)workoutDemoSession
{
  v2 = static NLWorkoutDemoUtilities.workoutDemoSession()();

  return v2;
}

+ (id)estimatedCaloriesFor:(id)a3 duration:(double)a4 distance:(id)a5
{
  v8 = objc_allocWithZone(MEMORY[0x277D0A810]);
  v9 = a3;
  v10 = a5;
  v12 = [v8 initWithWorkoutActivityType_];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v11.value.super.isa = v10;
  v13 = FIUIWorkoutActivityType.estimatedCalories(healthStore:duration:distance:)(static WorkoutCoreInjector.healthStore, a4, v11);

  return v13;
}

- (NLWorkoutDemoUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NLWorkoutDemoUtilities();
  return [(NLWorkoutDemoUtilities *)&v3 init];
}

@end