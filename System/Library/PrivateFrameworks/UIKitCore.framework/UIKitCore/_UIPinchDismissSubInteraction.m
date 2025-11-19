@interface _UIPinchDismissSubInteraction
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (UIView)view;
- (void)didMoveToView:(id)a3;
- (void)handlePinch:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation _UIPinchDismissSubInteraction

- (UIView)view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)willMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188C874B8(a3);
}

- (void)didMoveToView:(id)a3
{
  v5 = OBJC_IVAR____TtC5UIKit29_UIPinchDismissSubInteraction_gesture;
  v6 = *(self + OBJC_IVAR____TtC5UIKit29_UIPinchDismissSubInteraction_gesture);
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

- (void)handlePinch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_189238A48(v4);
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_18923B520();

  return self & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v4 = a4;
  if ([v4 _isGestureType_] && (v5 = objc_msgSend(v4, sel_view)) != 0)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      [v7 zoomScale];
      v10 = v9;
      [v8 minimumZoomScale];
      v12 = v11;

      return v10 <= v12;
    }
  }

  else
  {
  }

  return 0;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_18923B690(v6, v7);

  return v9 & 1;
}

@end