@interface ControlsView
- (NSArray)accessibilityElements;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setAccessibilityElements:(id)a3;
@end

@implementation ControlsView

- (void)layoutSubviews
{
  v2 = self;
  sub_220EA5DFC();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_220EA6BB4(a4, x, y);

  return v10;
}

- (NSArray)accessibilityElements
{
  v2 = self;
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

- (void)setAccessibilityElements:(id)a3
{
  if (a3)
  {
    sub_220FC2970();
  }

  v4 = self;
  j__swift_bridgeObjectRelease();
}

@end