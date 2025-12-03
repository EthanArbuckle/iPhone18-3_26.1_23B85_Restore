@interface CanonicalFooterSectionView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (VUILabel)accessibilityHeaderView;
@end

@implementation CanonicalFooterSectionView

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  width = subviews.width;
  selfCopy = self;
  sub_1E3F00F60(only, width);
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
  selfCopy = self;
  v3 = sub_1E3F01D44();

  return v3;
}

@end