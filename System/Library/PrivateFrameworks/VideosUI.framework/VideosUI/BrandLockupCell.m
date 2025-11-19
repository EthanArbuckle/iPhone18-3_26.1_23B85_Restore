@interface BrandLockupCell
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (id)zoomSourceView;
- (void)vui_setHighlighted:(BOOL)a3;
@end

@implementation BrandLockupCell

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  width = a3.width;
  v6 = self;
  v7 = sub_1E3E0162C(a4, width);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)vui_setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_1E3E01790(a3);
}

- (id)zoomSourceView
{
  v2 = sub_1E3E019B4();

  return v2;
}

@end