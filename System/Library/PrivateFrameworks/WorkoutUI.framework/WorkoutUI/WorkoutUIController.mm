@interface WorkoutUIController
- (void)didDiscardWorkout:(id)workout;
- (void)endWorkout:(id)workout withHKWorkout:(id)kWorkout endReason:(unint64_t)reason;
- (void)updateWorkout:(id)workout withHKWorkout:(id)kWorkout workoutIsFinal:(BOOL)final;
- (void)workoutController:(id)controller mirroredStart:(id)start;
- (void)workoutController:(id)controller startSource:(unint64_t)source sessionControl:(id)control;
- (void)workoutController:(id)controller transitionedWorkout:(id)workout toState:(int64_t)state;
@end

@implementation WorkoutUIController

- (void)workoutController:(id)controller transitionedWorkout:(id)workout toState:(int64_t)state
{
  controllerCopy = controller;
  workoutCopy = workout;

  specialized WorkoutUIController.workoutController(_:transitionedWorkout:toState:)(workout, state);
}

- (void)workoutController:(id)controller startSource:(unint64_t)source sessionControl:(id)control
{
  if (*self->workoutSessionViewController)
  {
    v8 = swift_allocObject();
    v8[2] = self;
    v8[3] = controller;
    v8[4] = source;
    controllerCopy = controller;
    swift_retain_n();
    controllerCopy2 = controllerCopy;
    WorkoutUIController.dismissWorkoutSessionViewController(completion:)(closure #1 in WorkoutUIController.workoutController(_:startSource:sessionControl:)partial apply, v8);
  }

  else
  {
    if (!controller)
    {
      __break(1u);
      return;
    }

    controllerCopy2 = controller;
    WorkoutUIController.presentWorkoutSessionViewController(workoutController:startSource:)(controllerCopy2, source, 0);
  }
}

- (void)workoutController:(id)controller mirroredStart:(id)start
{
  controllerCopy = controller;
  startCopy = start;

  WorkoutUIController.workoutController(_:mirroredStart:)(controllerCopy, startCopy);
}

- (void)endWorkout:(id)workout withHKWorkout:(id)kWorkout endReason:(unint64_t)reason
{

  workoutCopy = workout;
  kWorkoutCopy = kWorkout;
  v9 = specialized WorkoutUIController.withSourceRevision(_:)(kWorkout);
  if (workoutCopy)
  {
    v10 = v9;
    WorkoutUIController.handleWorkoutSessionCompletion(with:workout:)(v9, workoutCopy);
  }

  else
  {
    __break(1u);
  }
}

- (void)updateWorkout:(id)workout withHKWorkout:(id)kWorkout workoutIsFinal:(BOOL)final
{

  workoutCopy = workout;
  kWorkoutCopy = kWorkout;
  v9 = specialized WorkoutUIController.withSourceRevision(_:)(kWorkout);
  if (workoutCopy)
  {
    v10 = v9;
    WorkoutUIController.handleWorkoutSessionCompletion(with:workout:)(v9, workoutCopy);
  }

  else
  {
    __break(1u);
  }
}

- (void)didDiscardWorkout:(id)workout
{
  if (workout)
  {

    workoutCopy = workout;
    WorkoutUIController.handleWorkoutSessionCompletion(with:workout:)(0, workoutCopy);
  }

  else
  {
    __break(1u);
  }
}

@end