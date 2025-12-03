@interface BurnBarSummary
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation BurnBarSummary

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20C11ECD0();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_20C11F538();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end