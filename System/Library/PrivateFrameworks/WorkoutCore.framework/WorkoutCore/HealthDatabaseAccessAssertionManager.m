@interface HealthDatabaseAccessAssertionManager
- (void)workoutController:(id)a3 startSource:(unint64_t)a4 sessionControl:(id)a5;
- (void)workoutController:(id)a3 transitionedWorkout:(id)a4 toState:(int64_t)a5;
@end

@implementation HealthDatabaseAccessAssertionManager

- (void)workoutController:(id)a3 startSource:(unint64_t)a4 sessionControl:(id)a5
{
  v6 = a3;
  v7 = a5;

  specialized HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:)(a5);
}

- (void)workoutController:(id)a3 transitionedWorkout:(id)a4 toState:(int64_t)a5
{
  v7 = a3;
  v8 = a4;

  specialized HealthDatabaseAccessAssertionManager.workoutController(_:transitionedWorkout:toState:)(a4, a5);
}

@end