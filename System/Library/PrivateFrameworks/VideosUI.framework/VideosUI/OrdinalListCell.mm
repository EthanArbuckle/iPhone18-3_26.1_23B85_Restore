@interface OrdinalListCell
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (id)zoomSourceView;
@end

@implementation OrdinalListCell

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  width = subviews.width;
  selfCopy = self;
  v7 = sub_1E3FB01C8(only, width);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)zoomSourceView
{
  selfCopy = self;
  v3 = sub_1E3FB1988();

  return v3;
}

@end