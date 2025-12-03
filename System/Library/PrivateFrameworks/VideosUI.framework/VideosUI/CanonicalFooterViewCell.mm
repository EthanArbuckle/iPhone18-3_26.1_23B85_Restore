@interface CanonicalFooterViewCell
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (void)vui_prepareForReuse;
@end

@implementation CanonicalFooterViewCell

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  width = subviews.width;
  selfCopy = self;
  sub_1E3FF6DB8(only, width);
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
  selfCopy = self;
  sub_1E3FF7910();
}

@end