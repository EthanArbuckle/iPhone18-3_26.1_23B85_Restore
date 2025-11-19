@interface AXSHomeButtonAssistant
@end

@implementation AXSHomeButtonAssistant

void ___AXSHomeButtonAssistant_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.homebuttonassistant", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v6 = 1;
  v1 = _copyValuePreferenceApp(kAXSHomeButtonAssistantPreference, 0, &v6);
  v2 = v1;
  if (v6)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = CFGetTypeID(v1);
    if (v4 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v2, kCFNumberIntType, &valuePtr);
      _kAXSHomeButtonAssistant = valuePtr;
    }

    goto LABEL_12;
  }

  if (v1)
  {
LABEL_12:
    CFRelease(v2);
  }
}

@end