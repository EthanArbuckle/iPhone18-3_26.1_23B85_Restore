@interface WFSheetView
- (BOOL)accessibilityPerformEscape;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)handleDimmingLayerTap;
- (void)handlePanGestureWithRecognizer:(id)a3;
- (void)layoutSubviews;
@end

@implementation WFSheetView

- (void)layoutSubviews
{
  v2 = self;
  sub_27455E880();
}

- (void)handleDimmingLayerTap
{
  v2 = self;
  sub_27455F024();
}

- (void)handlePanGestureWithRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27455F08C(v4);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_274563624(a4, x, y);

  return v10;
}

- (BOOL)accessibilityPerformEscape
{
  v2 = self;
  sub_2745637D0();

  return 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = WFSheetView.gestureRecognizer(_:shouldReceive:)(v6, v7);

  return v9;
}

@end