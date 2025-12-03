@interface CardViewAnimationCoordinator
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (void)handleWithRecognizer:(id)recognizer;
@end

@implementation CardViewAnimationCoordinator

- (void)handleWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_1D8090380(recognizerCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  CardViewAnimationCoordinator.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(selfCopy, gestureRecognizerCopy);

  return 1;
}

@end