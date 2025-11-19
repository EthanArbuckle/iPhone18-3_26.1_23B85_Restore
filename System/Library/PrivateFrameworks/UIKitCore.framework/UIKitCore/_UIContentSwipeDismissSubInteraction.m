@interface _UIContentSwipeDismissSubInteraction
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (UIView)view;
- (void)_gestureRecognizerFailed:(id)a3;
- (void)didMoveToView:(id)a3;
- (void)handlePan:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation _UIContentSwipeDismissSubInteraction

- (UIView)view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)willMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188C872A0(a3);
}

- (void)didMoveToView:(id)a3
{
  v5 = OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_gesture;
  v6 = *(self + OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_gesture);
  v9 = self;
  v7 = a3;
  v8 = [v6 view];
  if (v8)
  {
  }

  else if (v7)
  {
    [v7 addGestureRecognizer_];
  }

  swift_unknownObjectWeakAssign();
}

- (void)handlePan:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_189005A44(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(self + OBJC_IVAR____TtC5UIKit36_UIContentSwipeDismissSubInteraction_gesture);
    v8 = self;
    v9 = [v6 delegate];
    if (v9)
    {
      [v9 hysteresisForInteraction_];
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

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1890076E0(v7);

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1890077BC(v7);

  return v9 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_189006730();
  LOBYTE(self) = v6;

  return self & 1;
}

- (void)_gestureRecognizerFailed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_189006BB0(v4);
}

@end