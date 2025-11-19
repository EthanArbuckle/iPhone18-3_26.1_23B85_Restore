@interface WorkoutSessionDeviceObserver
- (void)workout:(id)a3 didMoveToState:(int64_t)a4;
@end

@implementation WorkoutSessionDeviceObserver

- (void)workout:(id)a3 didMoveToState:(int64_t)a4
{
  if ((a4 - 5) <= 1)
  {

    WorkoutSessionDeviceObserver.stopObserving()();
  }
}

@end