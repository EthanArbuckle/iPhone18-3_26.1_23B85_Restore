@interface HintListCell
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (CGSize)vui_sizeThatFits:(CGSize)fits;
- (void)prepareForReuse;
- (void)vui_setHighlighted:(BOOL)highlighted;
@end

@implementation HintListCell

- (CGSize)vui_sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_6_12();
  v6 = sub_1E3F8572C(v4, v5);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  selfCopy = self;
  OUTLINED_FUNCTION_6_12();
  sub_1E3F85F10(only);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1E3F85FCC();
}

- (void)vui_setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_1E3F8609C(highlighted);
}

@end