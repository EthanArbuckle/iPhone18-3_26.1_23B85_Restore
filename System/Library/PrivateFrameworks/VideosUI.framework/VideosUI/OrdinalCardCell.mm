@interface OrdinalCardCell
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (CGSize)vui_sizeThatFits:(CGSize)a3;
- (id)zoomSourceView;
@end

@implementation OrdinalCardCell

- (CGSize)vui_sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_6_12();
  v5 = sub_1E3BCFC44(v4);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  v4 = self;
  OUTLINED_FUNCTION_6_12();
  sub_1E3BD0B80();
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)zoomSourceView
{
  v2 = self;
  v3 = sub_1E3BD1A2C();

  return v3;
}

@end