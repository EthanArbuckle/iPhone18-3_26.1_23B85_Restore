@interface PUOneUpGestureController
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (PUOneUpGestureController)initWithView:(id)view actionsController:(id)controller;
- (PUOneUpGestureControllerDelegate)delegate;
- (UIEdgeInsets)interactionInsets;
- (UIView)view;
- (void)cancelGestures;
- (void)handleDoubleTapWithRecognizer:(id)recognizer;
- (void)handleTapWithRecognizer:(id)recognizer;
- (void)setDelegate:(id)delegate;
@end

@implementation PUOneUpGestureController

- (PUOneUpGestureController)initWithView:(id)view actionsController:(id)controller
{
  viewCopy = view;
  swift_unknownObjectRetain();
  return OneUpGestureController.init(view:actionsController:)();
}

- (PUOneUpGestureControllerDelegate)delegate
{
  v2 = sub_1B3819F08();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
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
  selfCopy = self;
  sub_1B381A2A4();
}

- (void)handleTapWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_1B381A340(recognizerCopy);
}

- (void)handleDoubleTapWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_1B381A494(recognizerCopy);
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = OneUpGestureController.gestureRecognizerShouldBegin(_:)(beginCopy);

  return self & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = OneUpGestureController.gestureRecognizer(_:shouldReceive:)(recognizerCopy, touchCopy);

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = OneUpGestureController.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(recognizerCopy, gestureRecognizerCopy);

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = OneUpGestureController.gestureRecognizer(_:shouldBeRequiredToFailBy:)(recognizerCopy, gestureRecognizerCopy);

  return v9;
}

@end