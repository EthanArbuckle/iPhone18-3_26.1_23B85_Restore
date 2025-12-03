@interface FBSSceneTransitionContext(SBLocalTransientSettings)
- (double)watchdogScaleFactor;
- (void)setWatchdogScaleFactor:()SBLocalTransientSettings;
@end

@implementation FBSSceneTransitionContext(SBLocalTransientSettings)

- (double)watchdogScaleFactor
{
  transientLocalClientSettings = [self transientLocalClientSettings];
  v2 = [transientLocalClientSettings objectForSetting:1];

  if (v2)
  {
    [v2 doubleValue];
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  return v4;
}

- (void)setWatchdogScaleFactor:()SBLocalTransientSettings
{
  transientLocalClientSettings = [self transientLocalClientSettings];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  [transientLocalClientSettings setObject:v3 forSetting:1];
}

@end