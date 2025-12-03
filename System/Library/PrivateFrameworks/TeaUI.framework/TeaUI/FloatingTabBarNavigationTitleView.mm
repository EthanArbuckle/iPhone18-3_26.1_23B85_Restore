@interface FloatingTabBarNavigationTitleView
- (NSString)description;
- (double)contentAlpha;
- (void)contentDidChange;
- (void)layoutSubviews;
- (void)setContentAlpha:(double)alpha;
@end

@implementation FloatingTabBarNavigationTitleView

- (NSString)description
{
  selfCopy = self;
  sub_1D7F23074();

  v3 = sub_1D8190EE4();

  return v3;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D7F23454();
}

- (void)contentDidChange
{
  selfCopy = self;
  sub_1D7F237E8();
}

- (double)contentAlpha
{
  selfCopy = self;
  FloatingTabBarNavigationTitleView.contentAlpha.getter();
  v4 = v3;

  return v4;
}

- (void)setContentAlpha:(double)alpha
{
  selfCopy = self;
  FloatingTabBarNavigationTitleView.contentAlpha.setter();
}

@end