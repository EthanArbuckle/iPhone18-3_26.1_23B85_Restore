@interface WeatherMapOverlaySonifier
- (void)handleGestureWithRecognizer:(id)recognizer;
@end

@implementation WeatherMapOverlaySonifier

- (void)handleGestureWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;

  sub_220F4EA18(recognizerCopy);
}

@end