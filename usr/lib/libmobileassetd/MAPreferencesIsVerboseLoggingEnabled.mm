@interface MAPreferencesIsVerboseLoggingEnabled
@end

@implementation MAPreferencesIsVerboseLoggingEnabled

void ___MAPreferencesIsVerboseLoggingEnabled_block_invoke(id a1)
{
  if (_MAPreferencesIsInternalAllowed_onceToken != -1)
  {
    _MAPreferencesIsInternalAllowed_cold_1();
  }

  if (_MAPreferencesIsInternalAllowed__isAppleInternal == 1)
  {
    v2 = 0;
    AppBooleanValue = _MAPreferencesGetAppBooleanValue(@"EnableVerboseLogging", &v2);
    if (v2)
    {
      _MAPreferencesIsVerboseLoggingEnabled__verboseLoggingEnabled = AppBooleanValue;
    }
  }
}

@end