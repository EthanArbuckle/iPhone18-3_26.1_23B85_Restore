@interface OfferSelectionFooterSupplementaryView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
@end

@implementation OfferSelectionFooterSupplementaryView

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  width = a3.width;
  v6 = self;
  v7 = sub_1E3AFA97C(a4, width);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end