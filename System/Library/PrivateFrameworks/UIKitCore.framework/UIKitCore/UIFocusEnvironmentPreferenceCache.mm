@interface UIFocusEnvironmentPreferenceCache
@end

@implementation UIFocusEnvironmentPreferenceCache

_UIFocusEnvironmentPreferenceCacheNode *__78___UIFocusEnvironmentPreferenceCache_setPreferredEnvironments_forEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == v3)
  {
    v5 = 0;
  }

  else
  {
    v4 = [*(a1 + 40) environmentsMap];
    v5 = [v4 objectForKey:v3];

    if (!v5)
    {
      v5 = [[_UIFocusEnvironmentPreferenceCacheNode alloc] initWithEnvironment:v3];
      v6 = [*(a1 + 40) environmentsMap];
      [v6 setObject:v5 forKey:v3];
    }
  }

  return v5;
}

@end