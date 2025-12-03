@interface WFEditorView
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (NSArray)keyCommands;
- (void)escapeKeyPressed;
- (void)handleDrag:(id)drag;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)scroll;
- (void)willMoveToWindow:(id)window;
@end

@implementation WFEditorView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_27459F340();
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_27459F4B8();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_2745A0F70();
}

- (NSArray)keyCommands
{
  selfCopy = self;
  v3 = sub_2745A442C();

  if (v3)
  {
    sub_274412734(0, &unk_280952AA8);
    v4 = sub_27463B7FC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)escapeKeyPressed
{
  selfCopy = self;
  sub_2745A4534();
}

- (void)handleDrag:(id)drag
{
  dragCopy = drag;
  selfCopy = self;
  sub_2745A110C();
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_2745A604C();

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  sub_2745A615C(selfCopy, gestureRecognizerCopy);

  return 0;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_2745A625C(recognizerCopy, gestureRecognizerCopy);

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  sub_2745A6384(recognizerCopy, touchCopy);
  v10 = v9;

  return v10 & 1;
}

@end