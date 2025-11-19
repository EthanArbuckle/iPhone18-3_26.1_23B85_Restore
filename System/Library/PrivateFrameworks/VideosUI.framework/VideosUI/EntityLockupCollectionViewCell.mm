@interface EntityLockupCollectionViewCell
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (id)zoomSourceView;
- (void)prepareForReuse;
- (void)vui_setHighlighted:(BOOL)a3;
@end

@implementation EntityLockupCollectionViewCell

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  v8 = sub_1E3AC2874(a4, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)vui_setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_1E3AC3840(a3);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1E3AC3900();
}

- (id)zoomSourceView
{
  v2 = self;
  v3 = sub_1E3AC3B20();

  return v3;
}

@end