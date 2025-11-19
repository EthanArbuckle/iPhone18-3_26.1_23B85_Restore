@interface SUCurrentProcess
+ (SUCurrentProcess)default;
- (SUIdleTracker)idleTracker;
- (void)setIdleTracker:(id)a3;
@end

@implementation SUCurrentProcess

- (SUIdleTracker)idleTracker
{
  v2 = self;
  v3 = CurrentProcess.idleTracker.getter();

  return v3;
}

- (void)setIdleTracker:(id)a3
{
  v5 = a3;
  v6 = self;
  CurrentProcess.idleTracker.setter(a3);
}

+ (SUCurrentProcess)default
{
  v2 = static CurrentProcess.default.getter();

  return v2;
}

@end