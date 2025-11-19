@interface WFIconPickerSymbolCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)handleTap:(id)a3;
- (void)layoutSubviews;
@end

@implementation WFIconPickerSymbolCell

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27497824C(v4);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_27497845C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 50.0;
  v4 = 50.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end