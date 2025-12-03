@interface UIMutableApplicationSceneSettings(PGTransientLocal)
- (uint64_t)pg_hasVisiblePIPContent;
- (void)setPg_hasVisiblePIPContent:()PGTransientLocal;
@end

@implementation UIMutableApplicationSceneSettings(PGTransientLocal)

- (uint64_t)pg_hasVisiblePIPContent
{
  transientLocalSettings = [self transientLocalSettings];
  v2 = [transientLocalSettings objectForSetting:4821];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setPg_hasVisiblePIPContent:()PGTransientLocal
{
  transientLocalSettings = [self transientLocalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [transientLocalSettings setObject:v4 forSetting:4821];
}

@end