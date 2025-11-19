@interface PUOneUpGestureController
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (PUOneUpGestureController)initWithView:(id)a3 actionsController:(id)a4;
- (PUOneUpGestureControllerDelegate)delegate;
- (UIEdgeInsets)interactionInsets;
- (UIView)view;
- (void)cancelGestures;
- (void)handleDoubleTapWithRecognizer:(id)a3;
- (void)handleTapWithRecognizer:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation PUOneUpGestureController

- (PUOneUpGestureController)initWithView:(id)a3 actionsController:(id)a4
{
  v4 = a3;
  swift_unknownObjectRetain();
  return OneUpGestureController.init(view:actionsController:)();
}

- (PUOneUpGestureControllerDelegate)delegate
{
  v2 = sub_1B3819F08();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B3819FA4();
}

- (UIEdgeInsets)interactionInsets
{
  v2 = sub_1B381A0D8();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIView)view
{
  v2 = OneUpGestureController.view.getter();

  return v2;
}

- (void)cancelGestures
{
  v2 = self;
  sub_1B381A2A4();
}

- (void)handleTapWithRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B381A340(v4);
}

- (void)handleDoubleTapWithRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B381A494(v4);
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = OneUpGestureController.gestureRecognizerShouldBegin(_:)(v4);

  return self & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = OneUpGestureController.gestureRecognizer(_:shouldReceive:)(v6, v7);

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = OneUpGestureController.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(v6, v7);

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = OneUpGestureController.gestureRecognizer(_:shouldBeRequiredToFailBy:)(v6, v7);

  return v9;
}

@end