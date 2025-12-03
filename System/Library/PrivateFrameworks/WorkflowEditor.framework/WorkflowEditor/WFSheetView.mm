@interface WFSheetView
- (BOOL)accessibilityPerformEscape;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)handleDimmingLayerTap;
- (void)handlePanGestureWithRecognizer:(id)recognizer;
- (void)layoutSubviews;
@end

@implementation WFSheetView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_27455E880();
}

- (void)handleDimmingLayerTap
{
  selfCopy = self;
  sub_27455F024();
}

- (void)handlePanGestureWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_27455F08C(recognizerCopy);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_274563624(event, x, y);

  return v10;
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  sub_2745637D0();

  return 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = WFSheetView.gestureRecognizer(_:shouldReceive:)(recognizerCopy, touchCopy);

  return v9;
}

@end