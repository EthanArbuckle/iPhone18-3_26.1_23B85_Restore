@interface FloatingTabBarNavigationTitleView
- (NSString)description;
- (double)contentAlpha;
- (void)contentDidChange;
- (void)layoutSubviews;
- (void)setContentAlpha:(double)a3;
@end

@implementation FloatingTabBarNavigationTitleView

- (NSString)description
{
  v2 = self;
  sub_1D7F23074();

  v3 = sub_1D8190EE4();

  return v3;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D7F23454();
}

- (void)contentDidChange
{
  v2 = self;
  sub_1D7F237E8();
}

- (double)contentAlpha
{
  v2 = self;
  FloatingTabBarNavigationTitleView.contentAlpha.getter();
  v4 = v3;

  return v4;
}

- (void)setContentAlpha:(double)a3
{
  v3 = self;
  FloatingTabBarNavigationTitleView.contentAlpha.setter();
}

@end