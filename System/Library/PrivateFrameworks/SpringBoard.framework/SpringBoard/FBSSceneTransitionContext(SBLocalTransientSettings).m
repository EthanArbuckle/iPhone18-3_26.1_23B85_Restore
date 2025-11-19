@interface FBSSceneTransitionContext(SBLocalTransientSettings)
- (double)watchdogScaleFactor;
- (void)setWatchdogScaleFactor:()SBLocalTransientSettings;
@end

@implementation FBSSceneTransitionContext(SBLocalTransientSettings)

- (double)watchdogScaleFactor
{
  v1 = [a1 transientLocalClientSettings];
  v2 = [v1 objectForSetting:1];

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
  v4 = [a1 transientLocalClientSettings];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  [v4 setObject:v3 forSetting:1];
}

@end