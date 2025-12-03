@interface ScaleView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation ScaleView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_220F21D6C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_220F2199C();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end