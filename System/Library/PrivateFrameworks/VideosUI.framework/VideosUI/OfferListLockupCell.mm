@interface OfferListLockupCell
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (void)vui_prepareForReuse;
- (void)vui_setHighlighted:(BOOL)a3;
@end

@implementation OfferListLockupCell

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  v5 = self;
  v6 = OUTLINED_FUNCTION_25_1();
  sub_1E3B937A0(v6, v7);
  OUTLINED_FUNCTION_18_3();

  v8 = OUTLINED_FUNCTION_17_4();
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)vui_setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_1E3B93994(a3);
}

- (void)vui_prepareForReuse
{
  v2 = self;
  sub_1E3B93A64();
}

@end