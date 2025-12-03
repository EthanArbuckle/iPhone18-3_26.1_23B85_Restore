@interface WOSessionActivityDeviceObserver
- (BOOL)canResumeWorkoutWithActivityType:(id)type;
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
  selfCopy = self;
  SessionActivityDeviceObserver.startObserving()();
}

- (void)stopObserving
{
  selfCopy = self;
  SessionActivityDeviceObserver.stopObserving()();
}

- (BOOL)canResumeWorkoutWithActivityType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  LOBYTE(self) = SessionActivityDeviceObserver.canResumeWorkout(activityType:)(typeCopy);

  return self & 1;
}

@end