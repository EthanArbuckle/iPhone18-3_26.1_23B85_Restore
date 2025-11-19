@interface AXSFaceTimeCaptionsEnabled
@end

@implementation AXSFaceTimeCaptionsEnabled

uint64_t ___AXSFaceTimeCaptionsEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.FaceTimeCaptions", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSFaceTimeCaptionsPreference, &v2);
  if (v2)
  {
    _kAXSCacheFaceTimeCaptionsEnabled = result;
  }

  return result;
}

@end