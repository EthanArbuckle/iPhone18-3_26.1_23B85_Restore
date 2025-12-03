@interface WorkoutSessionDeviceObserver
- (void)workout:(id)workout didMoveToState:(int64_t)state;
@end

@implementation WorkoutSessionDeviceObserver

- (void)workout:(id)workout didMoveToState:(int64_t)state
{
  if ((state - 5) <= 1)
  {

    WorkoutSessionDeviceObserver.stopObserving()();
  }
}

@end