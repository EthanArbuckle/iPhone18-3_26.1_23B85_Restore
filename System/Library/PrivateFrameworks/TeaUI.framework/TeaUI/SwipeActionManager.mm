@interface SwipeActionManager
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (void)handlePanGestureWithRecognizer:(id)recognizer;
- (void)handleTapGestureWithRecognizer:(id)recognizer;
@end

@implementation SwipeActionManager

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_1D80FB234(beginCopy);

  return self & 1;
}

- (void)handlePanGestureWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_1D80FBB48(recognizerCopy);
}

- (void)handleTapGestureWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_1D80FD238(recognizerCopy);
}

@end