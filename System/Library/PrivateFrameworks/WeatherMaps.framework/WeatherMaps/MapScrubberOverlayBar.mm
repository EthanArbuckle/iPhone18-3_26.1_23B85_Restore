@interface MapScrubberOverlayBar
- (CGPoint)accessibilityActivationPoint;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)handleWithGesture:(id)a3;
- (void)layoutSubviews;
@end

@implementation MapScrubberOverlayBar

- (void)layoutSubviews
{
  v2 = self;
  sub_220FB0D40();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  sub_220FB17AC(width);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_220FB18FC(a4, x, y);

  return v10;
}

- (void)handleWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_220FB349C(v4);
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = self;
  sub_220FB3924();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)accessibilityIncrement
{
  v2 = self;
  sub_220FB4238(sub_220FB3940);
}

- (void)accessibilityDecrement
{
  v2 = self;
  sub_220FB4238(sub_220FB4454);
}

@end