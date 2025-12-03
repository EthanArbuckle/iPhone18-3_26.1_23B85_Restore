@interface WeatherMapOverlayManager
- (void)handleInvertColorsStatusDidChangeWithNotification:(id)notification;
@end

@implementation WeatherMapOverlayManager

- (void)handleInvertColorsStatusDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_220F63B54();
}

@end