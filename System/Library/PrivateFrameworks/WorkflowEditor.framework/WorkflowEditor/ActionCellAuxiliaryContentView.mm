@interface ActionCellAuxiliaryContentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation ActionCellAuxiliaryContentView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2745F5760();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  sub_2745F5A6C(width);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end