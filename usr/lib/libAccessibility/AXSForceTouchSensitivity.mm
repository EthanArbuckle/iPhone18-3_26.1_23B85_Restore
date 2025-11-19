@interface AXSForceTouchSensitivity
@end

@implementation AXSForceTouchSensitivity

void ___AXSForceTouchSensitivity_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.forcetouch.sensitivity.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  FloatPreference = _getFloatPreference(kAXSForceTouchSensitivityPreference, 0, &v2);
  if (v2)
  {
    _kAXSCachedForceTouchSensitivity = LODWORD(FloatPreference);
  }
}

@end