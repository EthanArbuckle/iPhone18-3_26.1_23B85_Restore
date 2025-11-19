@interface RootSideBarProfileView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)accountStoreDidChange:(id)a3;
- (void)handleTap:(id)a3;
@end

@implementation RootSideBarProfileView

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  width = a3.width;
  v6 = self;
  sub_1E38140D0(a4, width);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3814600();
}

- (void)accountStoreDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E38147B8();
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v5 = sub_1E381481C(self, a2, a5);

  return v5;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1E3814870(v6);

  return v9;
}

@end