@interface UpsellOfferTransactionView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (CGSize)vui_sizeThatFits:(CGSize)a3;
@end

@implementation UpsellOfferTransactionView

- (CGSize)vui_sizeThatFits:(CGSize)a3
{
  v3 = self;
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

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  v4 = a4;
  v5 = self;
  OUTLINED_FUNCTION_6_12();
  sub_1E38D3544(v4);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end