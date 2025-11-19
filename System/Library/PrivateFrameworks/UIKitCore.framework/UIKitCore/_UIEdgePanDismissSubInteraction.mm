@interface _UIEdgePanDismissSubInteraction
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (UIView)view;
- (void)didMoveToView:(id)a3;
- (void)handlePan:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation _UIEdgePanDismissSubInteraction

- (UIView)view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)willMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188C87024(a3);
}

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188C87170(a3);
}

- (void)handlePan:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18913C9C0(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(self + OBJC_IVAR____TtC5UIKit31_UIEdgePanDismissSubInteraction_gesture);
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
  v9 = sub_18913CE7C(v6, v7);

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_18913D1E8(v7);

  return v9 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_18913D380();

  return self & 1;
}

@end