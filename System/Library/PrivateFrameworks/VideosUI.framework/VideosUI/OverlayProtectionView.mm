@interface OverlayProtectionView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
@end

@implementation OverlayProtectionView

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  v8 = sub_1E4097158(a4, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  v6 = sub_1E4205F14();
  v8 = v7;
  v9 = a3;
  v10 = self;
  v11 = sub_1E409737C(v9, v6, v8);

  return v11;
}

@end