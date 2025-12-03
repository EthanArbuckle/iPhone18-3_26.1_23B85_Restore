@interface OfferListLockupCell
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (void)vui_prepareForReuse;
- (void)vui_setHighlighted:(BOOL)highlighted;
@end

@implementation OfferListLockupCell

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_25_1();
  sub_1E3B937A0(v6, v7);
  OUTLINED_FUNCTION_18_3();

  v8 = OUTLINED_FUNCTION_17_4();
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)vui_setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_1E3B93994(highlighted);
}

- (void)vui_prepareForReuse
{
  selfCopy = self;
  sub_1E3B93A64();
}

@end