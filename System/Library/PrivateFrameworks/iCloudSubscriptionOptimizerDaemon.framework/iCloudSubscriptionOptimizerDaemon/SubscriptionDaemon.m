@interface SubscriptionDaemon
- (void)onExitTimerRun;
@end

@implementation SubscriptionDaemon

- (void)onExitTimerRun
{
  v2 = *(**self->mainLoop + 128);

  v2(v3);
}

@end