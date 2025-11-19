@interface AXSVoiceOverTouchActive2DBrailleDisplays
@end

@implementation AXSVoiceOverTouchActive2DBrailleDisplays

CFTypeID ___AXSVoiceOverTouchActive2DBrailleDisplays_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.HasActive2DBrailleDisplay", 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return _AXSVoiceOverTouchUpdateActive2DBrailleDisplays();
}

@end