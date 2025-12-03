@interface HintView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)dismissTapped;
- (void)layoutSubviews;
@end

@implementation HintView

- (void)dismissTapped
{
  selfCopy = self;
  sub_220EA3250();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_220EA238C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  sub_220EA3DB8(width);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end