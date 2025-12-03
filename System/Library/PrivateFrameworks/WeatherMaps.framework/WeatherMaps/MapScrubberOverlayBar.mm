@interface MapScrubberOverlayBar
- (CGPoint)accessibilityActivationPoint;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)handleWithGesture:(id)gesture;
- (void)layoutSubviews;
@end

@implementation MapScrubberOverlayBar

- (void)layoutSubviews
{
  selfCopy = self;
  sub_220FB0D40();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  sub_220FB17AC(width);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_220FB18FC(event, x, y);

  return v10;
}

- (void)handleWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_220FB349C(gestureCopy);
}

- (CGPoint)accessibilityActivationPoint
{
  selfCopy = self;
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
  selfCopy = self;
  sub_220FB4238(sub_220FB3940);
}

- (void)accessibilityDecrement
{
  selfCopy = self;
  sub_220FB4238(sub_220FB4454);
}

@end