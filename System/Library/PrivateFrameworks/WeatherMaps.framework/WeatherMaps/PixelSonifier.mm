@interface PixelSonifier
- (void)handleGestureWithRecognizer:(id)recognizer;
- (void)hoverTimerFiredWithTimer:(id)timer;
@end

@implementation PixelSonifier

- (void)hoverTimerFiredWithTimer:(id)timer
{
  timerCopy = timer;

  sub_220EC8328();
}

- (void)handleGestureWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;

  sub_220EC8F44(recognizerCopy);
}

@end