@interface HKSPSensitiveUIMonitor(Daemon)
- (uint64_t)initWithEnvironment:()Daemon;
@end

@implementation HKSPSensitiveUIMonitor(Daemon)

- (uint64_t)initWithEnvironment:()Daemon
{
  defaultCallbackScheduler = [a3 defaultCallbackScheduler];
  v5 = [self initWithCallbackScheduler:defaultCallbackScheduler];

  return v5;
}

@end