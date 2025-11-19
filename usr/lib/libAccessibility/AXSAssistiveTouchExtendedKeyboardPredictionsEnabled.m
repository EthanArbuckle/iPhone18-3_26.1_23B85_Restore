@interface AXSAssistiveTouchExtendedKeyboardPredictionsEnabled
@end

@implementation AXSAssistiveTouchExtendedKeyboardPredictionsEnabled

uint64_t ___AXSAssistiveTouchExtendedKeyboardPredictionsEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.assistivetouch.useextendedkeyboardpredictions", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSAssistiveTouchUseExtendedKeyboardPredictionsEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheAssistiveTouchUseExtendedKeyboardPredictionsEnabled = result;
  }

  return result;
}

@end