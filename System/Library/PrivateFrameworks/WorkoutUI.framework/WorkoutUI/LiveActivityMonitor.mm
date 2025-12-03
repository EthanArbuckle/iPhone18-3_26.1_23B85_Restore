@interface LiveActivityMonitor
- (void)workout:(id)workout didMoveToState:(int64_t)state;
- (void)workout:(id)workout pausedReasonsDidUpdate:(unint64_t)update;
@end

@implementation LiveActivityMonitor

- (void)workout:(id)workout didMoveToState:(int64_t)state
{
  workoutCopy = workout;

  LiveActivityMonitor.workout(_:didMoveToState:)(workoutCopy, state);
}

- (void)workout:(id)workout pausedReasonsDidUpdate:(unint64_t)update
{
  workoutCopy = workout;

  specialized LiveActivityMonitor.workout(_:pausedReasonsDidUpdate:)(workoutCopy);
}

@end