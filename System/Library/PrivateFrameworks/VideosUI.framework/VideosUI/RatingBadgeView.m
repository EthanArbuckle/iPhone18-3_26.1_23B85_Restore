@interface RatingBadgeView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation RatingBadgeView

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_1E3F73ADC();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  v3 = self;
  sub_1E3F74158();
}

@end