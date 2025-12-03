@interface RootSideBarProfileView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)accountStoreDidChange:(id)change;
- (void)handleTap:(id)tap;
@end

@implementation RootSideBarProfileView

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  width = subviews.width;
  selfCopy = self;
  sub_1E38140D0(only, width);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_1E3814600();
}

- (void)accountStoreDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1E38147B8();
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  v5 = sub_1E381481C(self, a2, region);

  return v5;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = sub_1E3814870(interactionCopy);

  return v9;
}

@end