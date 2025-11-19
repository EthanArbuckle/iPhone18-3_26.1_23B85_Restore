@interface AXSQuickSpeakHighlightTextEnabled
@end

@implementation AXSQuickSpeakHighlightTextEnabled

uint64_t ___AXSQuickSpeakHighlightTextEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.quick.speak.highlight.text", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSQuickSpeakHighlightTextEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheQuickSpeakHighlightTextEnabled = result;
  }

  return result;
}

@end