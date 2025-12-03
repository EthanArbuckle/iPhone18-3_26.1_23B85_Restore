@interface WeatherMapOverlayAnimation
- (void)tick:(id)tick;
@end

@implementation WeatherMapOverlayAnimation

- (void)tick:(id)tick
{
  tickCopy = tick;

  sub_220EE9140(tickCopy);
}

@end