@interface OfferCardCollectionViewCell
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (void)rentalExpirationLabelNeedsRelayout:(id)a3;
- (void)vui_prepareForReuse;
@end

@implementation OfferCardCollectionViewCell

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  sub_1E417907C(a4, width, height);

  v8 = OUTLINED_FUNCTION_17_4();
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)vui_prepareForReuse
{
  v2 = self;
  sub_1E41791C0();
}

- (void)rentalExpirationLabelNeedsRelayout:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3D18390();
}

@end