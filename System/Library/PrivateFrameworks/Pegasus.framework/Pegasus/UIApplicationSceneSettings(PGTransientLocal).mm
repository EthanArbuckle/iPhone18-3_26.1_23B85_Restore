@interface UIApplicationSceneSettings(PGTransientLocal)
- (uint64_t)pg_hasVisiblePIPContent;
@end

@implementation UIApplicationSceneSettings(PGTransientLocal)

- (uint64_t)pg_hasVisiblePIPContent
{
  transientLocalSettings = [self transientLocalSettings];
  v2 = [transientLocalSettings objectForSetting:4821];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end