@interface HealthDatabaseAccessAssertionManager
- (void)workoutController:(id)controller startSource:(unint64_t)source sessionControl:(id)control;
- (void)workoutController:(id)controller transitionedWorkout:(id)workout toState:(int64_t)state;
@end

@implementation HealthDatabaseAccessAssertionManager

- (void)workoutController:(id)controller startSource:(unint64_t)source sessionControl:(id)control
{
  controllerCopy = controller;
  controlCopy = control;

  specialized HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:)(control);
}

- (void)workoutController:(id)controller transitionedWorkout:(id)workout toState:(int64_t)state
{
  controllerCopy = controller;
  workoutCopy = workout;

  specialized HealthDatabaseAccessAssertionManager.workoutController(_:transitionedWorkout:toState:)(workout, state);
}

@end