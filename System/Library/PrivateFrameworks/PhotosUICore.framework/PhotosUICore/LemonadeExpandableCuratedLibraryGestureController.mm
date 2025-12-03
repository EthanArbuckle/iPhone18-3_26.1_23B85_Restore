@interface LemonadeExpandableCuratedLibraryGestureController
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (void)handlePanWithGesture:(id)gesture;
@end

@implementation LemonadeExpandableCuratedLibraryGestureController

- (void)handlePanWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_1A3F5E0B0(gestureCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  return [gestureRecognizer px:v5 isPanGestureRecognizerOfScrollView:?];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_1A3F5E2F8(beginCopy);

  return self & 1;
}

@end