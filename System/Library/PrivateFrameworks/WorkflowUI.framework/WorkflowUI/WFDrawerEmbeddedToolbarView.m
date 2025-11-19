@interface WFDrawerEmbeddedToolbarView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation WFDrawerEmbeddedToolbarView

- (void)layoutSubviews
{
  v2 = self;
  sub_2747F3B8C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  sub_2747F3FA4(self);
  result.height = v4;
  result.width = v3;
  return result;
}

@end