@interface ControlsView
- (NSArray)accessibilityElements;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)setAccessibilityElements:(id)elements;
@end

@implementation ControlsView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_220EA5DFC();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_220EA6BB4(event, x, y);

  return v10;
}

- (NSArray)accessibilityElements
{
  selfCopy = self;
  v3 = sub_220EA6D78();

  if (v3)
  {
    v4 = sub_220FC2960();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAccessibilityElements:(id)elements
{
  if (elements)
  {
    sub_220FC2970();
  }

  selfCopy = self;
  j__swift_bridgeObjectRelease();
}

@end