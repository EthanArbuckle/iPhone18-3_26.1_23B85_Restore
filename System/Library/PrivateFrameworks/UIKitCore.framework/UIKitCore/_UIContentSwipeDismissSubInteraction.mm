@interface _UIContentSwipeDismissSubInteraction
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (UIView)view;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)didMoveToView:(id)view;
- (void)handlePan:(id)pan;
- (void)willMoveToView:(id)view;
@end

@implementation _UIContentSwipeDismissSubInteraction

- (UIView)view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188C872A0(view);
}

- (void)didMoveToView:(id)view
{
  v5 = OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_gesture;
  v6 = *(self + OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_gesture);
  selfCopy = self;
  viewCopy = view;
  view = [v6 view];
  if (view)
  {
  }

  else if (viewCopy)
  {
    [viewCopy addGestureRecognizer_];
  }

  swift_unknownObjectWeakAssign();
}

- (void)handlePan:(id)pan
{
  panCopy = pan;
  selfCopy = self;
  sub_189005A44(panCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(self + OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_gesture);
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
  v9 = sub_1890076E0(gestureRecognizerCopy);

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_1890077BC(gestureRecognizerCopy);

  return v9 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  sub_189006730();
  LOBYTE(self) = v6;

  return self & 1;
}

- (void)_gestureRecognizerFailed:(id)failed
{
  failedCopy = failed;
  selfCopy = self;
  sub_189006BB0(failedCopy);
}

@end