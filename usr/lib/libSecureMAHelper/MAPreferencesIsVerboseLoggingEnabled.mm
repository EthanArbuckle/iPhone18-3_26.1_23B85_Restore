@interface MAPreferencesIsVerboseLoggingEnabled
@end

@implementation MAPreferencesIsVerboseLoggingEnabled

void ___MAPreferencesIsVerboseLoggingEnabled_block_invoke()
{
  if (_MAPreferencesIsInternalAllowed_onceToken != -1)
  {
    _MAPreferencesIsInternalAllowed_cold_1();
  }

  if (_MAPreferencesIsInternalAllowed__isAppleInternal == 1)
  {
    v1 = 0;
    AppBooleanValue = _MAPreferencesGetAppBooleanValue(@"EnableVerboseLogging", &v1);
    if (v1)
    {
      _MAPreferencesIsVerboseLoggingEnabled__verboseLoggingEnabled = AppBooleanValue;
    }
  }
}

@end