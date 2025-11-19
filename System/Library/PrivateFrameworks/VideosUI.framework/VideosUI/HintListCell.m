@interface HintListCell
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (CGSize)vui_sizeThatFits:(CGSize)a3;
- (void)prepareForReuse;
- (void)vui_setHighlighted:(BOOL)a3;
@end

@implementation HintListCell

- (CGSize)vui_sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_6_12();
  v6 = sub_1E3F8572C(v4, v5);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  v5 = self;
  OUTLINED_FUNCTION_6_12();
  sub_1E3F85F10(a4);
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
  v2 = self;
  sub_1E3F85FCC();
}

- (void)vui_setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_1E3F8609C(a3);
}

@end