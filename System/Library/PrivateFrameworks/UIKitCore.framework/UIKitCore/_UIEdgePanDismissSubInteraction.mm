@interface _UIEdgePanDismissSubInteraction
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (UIView)view;
- (void)didMoveToView:(id)view;
- (void)handlePan:(id)pan;
- (void)willMoveToView:(id)view;
@end

@implementation _UIEdgePanDismissSubInteraction

- (UIView)view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188C87024(view);
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188C87170(view);
}

- (void)handlePan:(id)pan
{
  panCopy = pan;
  selfCopy = self;
  sub_18913C9C0(panCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(self + OBJC_IVAR____TtC5UIKit31_UIEdgePanDismissSubInteraction_gesture);
    selfCopy = self;
    delegate = [v6 delegate];
    if (delegate)
    {
      [delegate hysteresisForInteraction_];
      v11 = v10;
      swift_unknownObjectRelease();
      v12 = v11;
    }

    else
    {
      [objc_opt_self() _defaultHysteresis];
    }

    [v7 _setHysteresis_];
  }

  return 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_18913CE7C(recognizerCopy, gestureRecognizerCopy);

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_18913D1E8(gestureRecognizerCopy);

  return v9 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_18913D380();

  return self & 1;
}

@end