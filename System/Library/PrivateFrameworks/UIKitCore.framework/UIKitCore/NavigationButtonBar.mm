@interface NavigationButtonBar
- (CGPoint)convertPoint:(CGPoint)a3 fromCoordinateSpace:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toCoordinateSpace:(id)a4;
- (CGRect)bounds;
- (CGRect)convertRect:(CGRect)a3 fromCoordinateSpace:(id)a4;
- (CGRect)convertRect:(CGRect)a3 toCoordinateSpace:(id)a4;
- (UIEdgeInsets)_layoutMarginsForButtonBarButton:(id)a3 compact:(BOOL)a4;
- (double)additionalEdgeSpacingForButtonBarButton:(id)a3 representingBarButtonItem:(id)a4;
- (id)_groupOrdererGroups:(id)a3;
- (id)itemAtPoint:(CGPoint)a3 inView:(id)a4;
- (id)tintColorForButtonBarButton:(id)a3;
- (void)_groupOrdererDidUpdate:(id)a3;
- (void)configurationDependenciesChangedForButtonBarButton:(id)a3 representingBarButtonItem:(id)a4;
- (void)invalidateAssistant:(id)a3;
- (void)setAppearanceStorage:(id)a3;
@end

@implementation NavigationButtonBar

- (id)tintColorForButtonBarButton:(id)a3
{
  v3 = [objc_opt_self() tintColor];

  return v3;
}

- (UIEdgeInsets)_layoutMarginsForButtonBarButton:(id)a3 compact:(BOOL)a4
{
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (double)additionalEdgeSpacingForButtonBarButton:(id)a3 representingBarButtonItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_188C4081C(v7);
  v10 = v9;

  return v10;
}

- (void)setAppearanceStorage:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_appearanceStorage);
  *(&self->super.isa + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_appearanceStorage) = a3;
  v3 = a3;
}

- (id)itemAtPoint:(CGPoint)a3 inView:(id)a4
{
  v12 = 0;
  v9[2] = a4;
  v10 = a3;
  v11 = &v12;
  v5 = a4;
  v6 = self;
  sub_188B487E8(sub_188EC2444, v9);

  v7 = v12;

  return v7;
}

- (id)_groupOrdererGroups:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_18907AEA8(v4);

  if (v6)
  {
    sub_188A34624(0, &unk_1ED48DBD0);
    v7 = sub_18A4A7518();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_groupOrdererDidUpdate:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer);
  if (v4)
  {
    v5 = v4 == a3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    *(&self->super.isa + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_resolvedSections) = 0;
    v7 = a3;
    v8 = self;

    sub_18907A694();
  }
}

- (void)invalidateAssistant:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong invalidate];
  }
}

- (void)configurationDependenciesChangedForButtonBarButton:(id)a3 representingBarButtonItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_18907CE10(v7);
}

- (CGPoint)convertPoint:(CGPoint)a3 toCoordinateSpace:(id)a4
{
  v4 = sub_18907B854(a3.x, a3.y, self, a2, a4, &selRef_convertPoint_toCoordinateSpace_);
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromCoordinateSpace:(id)a4
{
  v4 = sub_18907B854(a3.x, a3.y, self, a2, a4, &selRef_convertPoint_fromCoordinateSpace_);
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 toCoordinateSpace:(id)a4
{
  v4 = sub_18907B8E0(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, self, a2, a4, &selRef_convertRect_toCoordinateSpace_);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 fromCoordinateSpace:(id)a4
{
  v4 = sub_18907B8E0(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, self, a2, a4, &selRef_convertRect_fromCoordinateSpace_);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)bounds
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end