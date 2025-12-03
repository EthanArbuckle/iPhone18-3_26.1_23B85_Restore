@interface OfferCardCollectionViewCell
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (void)rentalExpirationLabelNeedsRelayout:(id)relayout;
- (void)vui_prepareForReuse;
@end

@implementation OfferCardCollectionViewCell

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  selfCopy = self;
  sub_1E417907C(only, width, height);

  v8 = OUTLINED_FUNCTION_17_4();
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)vui_prepareForReuse
{
  selfCopy = self;
  sub_1E41791C0();
}

- (void)rentalExpirationLabelNeedsRelayout:(id)relayout
{
  relayoutCopy = relayout;
  selfCopy = self;
  sub_1E3D18390();
}

@end