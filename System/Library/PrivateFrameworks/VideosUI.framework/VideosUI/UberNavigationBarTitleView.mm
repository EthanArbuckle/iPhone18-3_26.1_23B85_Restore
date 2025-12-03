@interface UberNavigationBarTitleView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)contentDidChange;
- (void)layoutSubviews;
- (void)setScrolledNonUberPercentage:(double)percentage;
@end

@implementation UberNavigationBarTitleView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E398C9F8();
}

- (void)contentDidChange
{
  selfCopy = self;
  sub_1E398D198();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1E398D224(event, x, y);

  return v10;
}

- (void)setScrolledNonUberPercentage:(double)percentage
{
  selfCopy = self;
  sub_1E398D7B8(percentage);
}

@end