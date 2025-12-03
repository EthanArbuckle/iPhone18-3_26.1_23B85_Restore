@interface MultiPlayerViewController.GestureManager
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (void)viewPannedWithGesture:(id)gesture;
- (void)viewPinchedWithGesture:(id)gesture;
- (void)viewSwipedWithGesture:(id)gesture;
@end

@implementation MultiPlayerViewController.GestureManager

- (void)viewSwipedWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E3BC6430(v6);
}

- (void)viewPinchedWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E3BC6644(v6);
}

- (void)viewPannedWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E3BC6814(v6);
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_1E3BC68C4(beginCopy);

  return self & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = OUTLINED_FUNCTION_13_8();
  v11 = sub_1E3BC6AFC(v9, v10);

  return v11;
}

@end