@interface SBRecentlyUsedSceneIdentityCache
@end

@implementation SBRecentlyUsedSceneIdentityCache

void __50___SBRecentlyUsedSceneIdentityCache_copyWithZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 mutableCopy];
  [*(*(a1 + 32) + 8) setObject:v6 forKey:v5];
}

id __66___SBRecentlyUsedSceneIdentityCache_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) count];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [v3 appendObject:*(*(a1 + 32) + 16) withName:@"recentPIDs"];
    return [*(a1 + 40) appendObject:*(*(a1 + 32) + 8) withName:@"recentSceneIdentityTokensByPID"];
  }

  else
  {

    return [v3 appendString:@"empty" withName:0];
  }
}

@end