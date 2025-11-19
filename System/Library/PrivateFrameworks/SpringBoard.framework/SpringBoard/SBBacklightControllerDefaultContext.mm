@interface SBBacklightControllerDefaultContext
- (SBIdleTimerDefaults)idleTimerDefaults;
@end

@implementation SBBacklightControllerDefaultContext

- (SBIdleTimerDefaults)idleTimerDefaults
{
  v2 = +[SBDefaults localDefaults];
  v3 = [v2 idleTimerDefaults];

  return v3;
}

@end