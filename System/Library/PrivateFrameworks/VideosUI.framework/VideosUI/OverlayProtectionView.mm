@interface OverlayProtectionView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (id)actionForLayer:(id)layer forKey:(id)key;
@end

@implementation OverlayProtectionView

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  selfCopy = self;
  v8 = sub_1E4097158(only, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  v6 = sub_1E4205F14();
  v8 = v7;
  layerCopy = layer;
  selfCopy = self;
  v11 = sub_1E409737C(layerCopy, v6, v8);

  return v11;
}

@end