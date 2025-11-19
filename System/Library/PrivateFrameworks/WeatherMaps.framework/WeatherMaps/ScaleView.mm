@interface ScaleView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation ScaleView

- (void)layoutSubviews
{
  v2 = self;
  sub_220F21D6C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
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