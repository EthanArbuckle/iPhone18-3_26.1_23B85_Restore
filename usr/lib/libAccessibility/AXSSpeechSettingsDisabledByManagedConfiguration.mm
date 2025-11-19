@interface AXSSpeechSettingsDisabledByManagedConfiguration
@end

@implementation AXSSpeechSettingsDisabledByManagedConfiguration

uint64_t ___AXSSpeechSettingsDisabledByManagedConfiguration_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.speech.settings.disabled.by.mc", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSSpeechSettingsDisabledByManagedConfigurationPreference, &v2);
  if (v2)
  {
    _kAXSCacheSpeechSettingsDisabledByManagedConfiguration = result;
  }

  return result;
}

@end