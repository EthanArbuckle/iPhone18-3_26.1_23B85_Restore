@interface UberNavigationBarTitleView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)contentDidChange;
- (void)layoutSubviews;
- (void)setScrolledNonUberPercentage:(double)a3;
@end

@implementation UberNavigationBarTitleView

- (void)layoutSubviews
{
  v2 = self;
  sub_1E398C9F8();
}

- (void)contentDidChange
{
  v2 = self;
  sub_1E398D198();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_1E398D224(a4, x, y);

  return v10;
}

- (void)setScrolledNonUberPercentage:(double)a3
{
  v4 = self;
  sub_1E398D7B8(a3);
}

@end