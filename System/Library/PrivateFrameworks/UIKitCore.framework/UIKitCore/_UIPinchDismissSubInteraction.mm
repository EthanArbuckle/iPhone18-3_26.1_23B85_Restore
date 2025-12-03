@interface _UIPinchDismissSubInteraction
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (UIView)view;
- (void)didMoveToView:(id)view;
- (void)handlePinch:(id)pinch;
- (void)willMoveToView:(id)view;
@end

@implementation _UIPinchDismissSubInteraction

- (UIView)view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188C874B8(view);
}

- (void)didMoveToView:(id)view
{
  v5 = OBJC_IVAR____TtC5UIKit29_UIPinchDismissSubInteraction_gesture;
  v6 = *(self + OBJC_IVAR____TtC5UIKit29_UIPinchDismissSubInteraction_gesture);
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

- (void)handlePinch:(id)pinch
{
  pinchCopy = pinch;
  selfCopy = self;
  sub_189238A48(pinchCopy);
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_18923B520();

  return self & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  if ([gestureRecognizerCopy _isGestureType_] && (v5 = objc_msgSend(gestureRecognizerCopy, sel_view)) != 0)
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

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_18923B690(recognizerCopy, gestureRecognizerCopy);

  return v9 & 1;
}

@end