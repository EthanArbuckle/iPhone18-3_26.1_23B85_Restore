@interface AXSAccessibilitySecureIntentProvider
@end

@implementation AXSAccessibilitySecureIntentProvider

uint64_t ___AXSAccessibilitySecureIntentProvider_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.secure.intent.provider", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSSecureIntentProviderPreference, &v2);
  if (v2)
  {
    _kAXSCacheSecureIntentProviderPreference = result;
  }

  return result;
}

@end