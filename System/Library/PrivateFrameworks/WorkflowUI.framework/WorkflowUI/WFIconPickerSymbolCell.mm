@interface WFIconPickerSymbolCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)handleTap:(id)tap;
- (void)layoutSubviews;
@end

@implementation WFIconPickerSymbolCell

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_27497824C(tapCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_27497845C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 50.0;
  v4 = 50.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end