@interface EntityLockupCollectionViewCell
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (id)zoomSourceView;
- (void)prepareForReuse;
- (void)vui_setHighlighted:(BOOL)highlighted;
@end

@implementation EntityLockupCollectionViewCell

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  selfCopy = self;
  v8 = sub_1E3AC2874(only, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)vui_setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_1E3AC3840(highlighted);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1E3AC3900();
}

- (id)zoomSourceView
{
  selfCopy = self;
  v3 = sub_1E3AC3B20();

  return v3;
}

@end