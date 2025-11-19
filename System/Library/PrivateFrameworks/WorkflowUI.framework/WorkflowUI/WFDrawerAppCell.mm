@interface WFDrawerAppCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation WFDrawerAppCell

- (void)layoutSubviews
{
  v2 = self;
  sub_27484B2EC();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_27484B558(v3);
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end