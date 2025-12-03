@interface TTRIBackgroundView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation TTRIBackgroundView

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 1.0;
  v4 = 1.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21D52DB98();
}

@end