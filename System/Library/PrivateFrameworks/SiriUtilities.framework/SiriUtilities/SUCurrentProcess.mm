@interface SUCurrentProcess
+ (SUCurrentProcess)default;
- (SUIdleTracker)idleTracker;
- (void)setIdleTracker:(id)tracker;
@end

@implementation SUCurrentProcess

- (SUIdleTracker)idleTracker
{
  selfCopy = self;
  v3 = CurrentProcess.idleTracker.getter();

  return v3;
}

- (void)setIdleTracker:(id)tracker
{
  trackerCopy = tracker;
  selfCopy = self;
  CurrentProcess.idleTracker.setter(tracker);
}

+ (SUCurrentProcess)default
{
  v2 = static CurrentProcess.default.getter();

  return v2;
}

@end