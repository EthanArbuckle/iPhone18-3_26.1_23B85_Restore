@interface HKSPSensitiveUIMonitor(Daemon)
- (uint64_t)initWithEnvironment:()Daemon;
@end

@implementation HKSPSensitiveUIMonitor(Daemon)

- (uint64_t)initWithEnvironment:()Daemon
{
  v4 = [a3 defaultCallbackScheduler];
  v5 = [a1 initWithCallbackScheduler:v4];

  return v5;
}

@end