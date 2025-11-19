@interface TTRIBackgroundView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation TTRIBackgroundView

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 1.0;
  v4 = 1.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_21D52DB98();
}

@end