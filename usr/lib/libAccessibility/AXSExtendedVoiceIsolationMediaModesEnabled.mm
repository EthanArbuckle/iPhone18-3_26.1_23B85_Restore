@interface AXSExtendedVoiceIsolationMediaModesEnabled
@end

@implementation AXSExtendedVoiceIsolationMediaModesEnabled

uint64_t ___AXSExtendedVoiceIsolationMediaModesEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.extendedvoiceisolationmodes", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSExtendedVoiceIsolationMediaModesEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheExtendedVoiceIsolationMediaModesEnabled = result;
  }

  return result;
}

@end