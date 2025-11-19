@interface CanonicalFooterSectionView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (VUILabel)accessibilityHeaderView;
@end

@implementation CanonicalFooterSectionView

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  width = a3.width;
  v6 = self;
  sub_1E3F00F60(a4, width);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (VUILabel)accessibilityHeaderView
{
  v2 = self;
  v3 = sub_1E3F01D44();

  return v3;
}

@end