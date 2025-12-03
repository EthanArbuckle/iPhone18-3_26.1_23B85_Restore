@interface BrandLockupCell
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (id)zoomSourceView;
- (void)vui_setHighlighted:(BOOL)highlighted;
@end

@implementation BrandLockupCell

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  width = subviews.width;
  selfCopy = self;
  v7 = sub_1E3E0162C(only, width);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)vui_setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_1E3E01790(highlighted);
}

- (id)zoomSourceView
{
  v2 = sub_1E3E019B4();

  return v2;
}

@end