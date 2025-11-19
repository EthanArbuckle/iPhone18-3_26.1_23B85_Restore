@interface WorkoutUIController
- (void)didDiscardWorkout:(id)a3;
- (void)endWorkout:(id)a3 withHKWorkout:(id)a4 endReason:(unint64_t)a5;
- (void)updateWorkout:(id)a3 withHKWorkout:(id)a4 workoutIsFinal:(BOOL)a5;
- (void)workoutController:(id)a3 mirroredStart:(id)a4;
- (void)workoutController:(id)a3 startSource:(unint64_t)a4 sessionControl:(id)a5;
- (void)workoutController:(id)a3 transitionedWorkout:(id)a4 toState:(int64_t)a5;
@end

@implementation WorkoutUIController

- (void)workoutController:(id)a3 transitionedWorkout:(id)a4 toState:(int64_t)a5
{
  v7 = a3;
  v8 = a4;

  specialized WorkoutUIController.workoutController(_:transitionedWorkout:toState:)(a4, a5);
}

- (void)workoutController:(id)a3 startSource:(unint64_t)a4 sessionControl:(id)a5
{
  if (*self->workoutSessionViewController)
  {
    v8 = swift_allocObject();
    v8[2] = self;
    v8[3] = a3;
    v8[4] = a4;
    v9 = a3;
    swift_retain_n();
    v10 = v9;
    WorkoutUIController.dismissWorkoutSessionViewController(completion:)(closure #1 in WorkoutUIController.workoutController(_:startSource:sessionControl:)partial apply, v8);
  }

  else
  {
    if (!a3)
    {
      __break(1u);
      return;
    }

    v10 = a3;
    WorkoutUIController.presentWorkoutSessionViewController(workoutController:startSource:)(v10, a4, 0);
  }
}

- (void)workoutController:(id)a3 mirroredStart:(id)a4
{
  v5 = a3;
  v6 = a4;

  WorkoutUIController.workoutController(_:mirroredStart:)(v5, v6);
}

- (void)endWorkout:(id)a3 withHKWorkout:(id)a4 endReason:(unint64_t)a5
{

  v7 = a3;
  v8 = a4;
  v9 = specialized WorkoutUIController.withSourceRevision(_:)(a4);
  if (v7)
  {
    v10 = v9;
    WorkoutUIController.handleWorkoutSessionCompletion(with:workout:)(v9, v7);
  }

  else
  {
    __break(1u);
  }
}

- (void)updateWorkout:(id)a3 withHKWorkout:(id)a4 workoutIsFinal:(BOOL)a5
{

  v7 = a3;
  v8 = a4;
  v9 = specialized WorkoutUIController.withSourceRevision(_:)(a4);
  if (v7)
  {
    v10 = v9;
    WorkoutUIController.handleWorkoutSessionCompletion(with:workout:)(v9, v7);
  }

  else
  {
    __break(1u);
  }
}

- (void)didDiscardWorkout:(id)a3
{
  if (a3)
  {

    v4 = a3;
    WorkoutUIController.handleWorkoutSessionCompletion(with:workout:)(0, v4);
  }

  else
  {
    __break(1u);
  }
}

@end