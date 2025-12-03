@interface SBBacklightControllerDefaultContext
- (SBIdleTimerDefaults)idleTimerDefaults;
@end

@implementation SBBacklightControllerDefaultContext

- (SBIdleTimerDefaults)idleTimerDefaults
{
  v2 = +[SBDefaults localDefaults];
  idleTimerDefaults = [v2 idleTimerDefaults];

  return idleTimerDefaults;
}

@end