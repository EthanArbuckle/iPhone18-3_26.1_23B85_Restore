@interface LiveActivityMonitor
- (void)workout:(id)a3 didMoveToState:(int64_t)a4;
- (void)workout:(id)a3 pausedReasonsDidUpdate:(unint64_t)a4;
@end

@implementation LiveActivityMonitor

- (void)workout:(id)a3 didMoveToState:(int64_t)a4
{
  v5 = a3;

  LiveActivityMonitor.workout(_:didMoveToState:)(v5, a4);
}

- (void)workout:(id)a3 pausedReasonsDidUpdate:(unint64_t)a4
{
  v4 = a3;

  specialized LiveActivityMonitor.workout(_:pausedReasonsDidUpdate:)(v4);
}

@end