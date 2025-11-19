@interface AXSSpeakThisHighlightVisible
@end

@implementation AXSSpeakThisHighlightVisible

uint64_t ___AXSSpeakThisHighlightVisible_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.speak.this.highlight.visible", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSSpeakThisHighlightVisiblePreference, &v2);
  if (v2)
  {
    _kAXSCacheSpeakThisHighlightVisible = result;
  }

  return result;
}

@end