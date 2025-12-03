@interface WFDrawerEmbeddedToolbarView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation WFDrawerEmbeddedToolbarView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2747F3B8C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  sub_2747F3FA4(self);
  result.height = v4;
  result.width = v3;
  return result;
}

@end