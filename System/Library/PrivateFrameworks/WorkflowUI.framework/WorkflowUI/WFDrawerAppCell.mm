@interface WFDrawerAppCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation WFDrawerAppCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_27484B2EC();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_27484B558(selfCopy);
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end