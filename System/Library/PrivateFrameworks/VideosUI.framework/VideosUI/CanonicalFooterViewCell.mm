@interface CanonicalFooterViewCell
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (void)vui_prepareForReuse;
@end

@implementation CanonicalFooterViewCell

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  width = a3.width;
  v6 = self;
  sub_1E3FF6DB8(a4, width);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)vui_prepareForReuse
{
  v2 = self;
  sub_1E3FF7910();
}

@end