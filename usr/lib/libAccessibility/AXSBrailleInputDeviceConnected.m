@interface AXSBrailleInputDeviceConnected
@end

@implementation AXSBrailleInputDeviceConnected

uint64_t ___AXSBrailleInputDeviceConnected_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.braille.input.connection.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSBrailleInputDeviceConnectedPreference, &v2);
  if (v2)
  {
    _kAXSCacheBrailleInputDeviceConnected = result;
  }

  return result;
}

@end