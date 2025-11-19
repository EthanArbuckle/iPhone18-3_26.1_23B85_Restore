@interface PixelSonifier
- (void)handleGestureWithRecognizer:(id)a3;
- (void)hoverTimerFiredWithTimer:(id)a3;
@end

@implementation PixelSonifier

- (void)hoverTimerFiredWithTimer:(id)a3
{
  v3 = a3;

  sub_220EC8328();
}

- (void)handleGestureWithRecognizer:(id)a3
{
  v3 = a3;

  sub_220EC8F44(v3);
}

@end