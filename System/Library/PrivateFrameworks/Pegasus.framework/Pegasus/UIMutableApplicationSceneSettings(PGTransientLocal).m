@interface UIMutableApplicationSceneSettings(PGTransientLocal)
- (uint64_t)pg_hasVisiblePIPContent;
- (void)setPg_hasVisiblePIPContent:()PGTransientLocal;
@end

@implementation UIMutableApplicationSceneSettings(PGTransientLocal)

- (uint64_t)pg_hasVisiblePIPContent
{
  v1 = [a1 transientLocalSettings];
  v2 = [v1 objectForSetting:4821];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setPg_hasVisiblePIPContent:()PGTransientLocal
{
  v5 = [a1 transientLocalSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [v5 setObject:v4 forSetting:4821];
}

@end