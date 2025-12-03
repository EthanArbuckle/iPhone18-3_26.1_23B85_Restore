@interface WindowControlView
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (void)handleHover:(id)hover;
- (void)handleTapGesture:(id)gesture;
@end

@implementation WindowControlView

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_21ED27784();

  return v9 & 1;
}

- (void)handleTapGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_21ED278B8(gestureCopy);
}

- (void)handleHover:(id)hover
{
  hoverCopy = hover;
  selfCopy = self;
  sub_21ED27A0C(hoverCopy);
}

@end