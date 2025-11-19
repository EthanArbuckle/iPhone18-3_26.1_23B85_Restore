@interface MAPreferencesIsCentralizedCacheDeleteEnabled
@end

@implementation MAPreferencesIsCentralizedCacheDeleteEnabled

void ___MAPreferencesIsCentralizedCacheDeleteEnabled_block_invoke(id a1)
{
  if (_MAPreferencesIsInternalAllowed_onceToken != -1)
  {
    _MAPreferencesIsInternalAllowed_cold_1();
  }

  if (_MAPreferencesIsInternalAllowed__isAppleInternal == 1)
  {
    v2 = 0;
    AppBooleanValue = _MAPreferencesGetAppBooleanValue(@"EnableCentralizedCacheDelete", &v2);
    if (v2)
    {
      _MAPreferencesIsCentralizedCacheDeleteEnabled__centralizedCacheDeleteEnabled = AppBooleanValue;
    }
  }
}

@end