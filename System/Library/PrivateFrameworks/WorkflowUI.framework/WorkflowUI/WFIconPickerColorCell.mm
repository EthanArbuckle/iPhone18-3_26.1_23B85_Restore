@interface WFIconPickerColorCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)handleTap:(id)tap;
- (void)layoutSubviews;
@end

@implementation WFIconPickerColorCell

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_2747B5F20(tapCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2747B6580();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 60.0;
  v4 = 60.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end