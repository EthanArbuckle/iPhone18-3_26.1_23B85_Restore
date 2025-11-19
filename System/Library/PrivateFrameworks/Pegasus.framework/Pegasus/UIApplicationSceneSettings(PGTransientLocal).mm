@interface UIApplicationSceneSettings(PGTransientLocal)
- (uint64_t)pg_hasVisiblePIPContent;
@end

@implementation UIApplicationSceneSettings(PGTransientLocal)

- (uint64_t)pg_hasVisiblePIPContent
{
  v1 = [a1 transientLocalSettings];
  v2 = [v1 objectForSetting:4821];
  v3 = [v2 BOOLValue];

  return v3;
}

@end