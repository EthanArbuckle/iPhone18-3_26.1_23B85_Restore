@interface AXSAttentionAwarenessFeaturesEnabled
@end

@implementation AXSAttentionAwarenessFeaturesEnabled

uint64_t ___AXSAttentionAwarenessFeaturesEnabled_block_invoke()
{
  result = MGGetBoolAnswer();
  _AXSAttentionAwarenessFeaturesEnabled_supported = result;
  return result;
}

uint64_t ___AXSAttentionAwarenessFeaturesEnabled_block_invoke_2008()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.attention.awareness", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSAttentionAwarenessFeaturesEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheAttentionAwarenessFeaturesEnabled = result;
  }

  return result;
}

@end