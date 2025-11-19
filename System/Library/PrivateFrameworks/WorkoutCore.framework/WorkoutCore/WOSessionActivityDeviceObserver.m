@interface WOSessionActivityDeviceObserver
- (BOOL)canResumeWorkoutWithActivityType:(id)a3;
- (WOSessionActivityDeviceObserverDelegate)delegate;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation WOSessionActivityDeviceObserver

- (WOSessionActivityDeviceObserverDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)startObserving
{
  v2 = self;
  SessionActivityDeviceObserver.startObserving()();
}

- (void)stopObserving
{
  v2 = self;
  SessionActivityDeviceObserver.stopObserving()();
}

- (BOOL)canResumeWorkoutWithActivityType:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = SessionActivityDeviceObserver.canResumeWorkout(activityType:)(v4);

  return self & 1;
}

@end