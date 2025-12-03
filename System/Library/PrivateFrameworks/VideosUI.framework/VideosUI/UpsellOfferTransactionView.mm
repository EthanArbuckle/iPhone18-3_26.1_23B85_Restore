@interface UpsellOfferTransactionView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (CGSize)vui_sizeThatFits:(CGSize)fits;
@end

@implementation UpsellOfferTransactionView

- (CGSize)vui_sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_6_12();
  sub_1E38D3128(v4, v5);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  onlyCopy = only;
  selfCopy = self;
  OUTLINED_FUNCTION_6_12();
  sub_1E38D3544(onlyCopy);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end