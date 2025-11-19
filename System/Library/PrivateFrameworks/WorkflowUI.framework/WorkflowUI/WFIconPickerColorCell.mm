@interface WFIconPickerColorCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)handleTap:(id)a3;
- (void)layoutSubviews;
@end

@implementation WFIconPickerColorCell

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2747B5F20(v4);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_2747B6580();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 60.0;
  v4 = 60.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end