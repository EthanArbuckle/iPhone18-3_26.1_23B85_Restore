@interface NavigationButtonBar
- (CGPoint)convertPoint:(CGPoint)point fromCoordinateSpace:(id)space;
- (CGPoint)convertPoint:(CGPoint)point toCoordinateSpace:(id)space;
- (CGRect)bounds;
- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space;
- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space;
- (UIEdgeInsets)_layoutMarginsForButtonBarButton:(id)button compact:(BOOL)compact;
- (double)additionalEdgeSpacingForButtonBarButton:(id)button representingBarButtonItem:(id)item;
- (id)_groupOrdererGroups:(id)groups;
- (id)itemAtPoint:(CGPoint)point inView:(id)view;
- (id)tintColorForButtonBarButton:(id)button;
- (void)_groupOrdererDidUpdate:(id)update;
- (void)configurationDependenciesChangedForButtonBarButton:(id)button representingBarButtonItem:(id)item;
- (void)invalidateAssistant:(id)assistant;
- (void)setAppearanceStorage:(id)storage;
@end

@implementation NavigationButtonBar

- (id)tintColorForButtonBarButton:(id)button
{
  tintColor = [objc_opt_self() tintColor];

  return tintColor;
}

- (UIEdgeInsets)_layoutMarginsForButtonBarButton:(id)button compact:(BOOL)compact
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

- (double)additionalEdgeSpacingForButtonBarButton:(id)button representingBarButtonItem:(id)item
{
  buttonCopy = button;
  itemCopy = item;
  selfCopy = self;
  sub_188C4081C(itemCopy);
  v10 = v9;

  return v10;
}

- (void)setAppearanceStorage:(id)storage
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_appearanceStorage);
  *(&self->super.isa + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_appearanceStorage) = storage;
  storageCopy = storage;
}

- (id)itemAtPoint:(CGPoint)point inView:(id)view
{
  v12 = 0;
  v9[2] = view;
  pointCopy = point;
  v11 = &v12;
  viewCopy = view;
  selfCopy = self;
  sub_188B487E8(sub_188EC2444, v9);

  v7 = v12;

  return v7;
}

- (id)_groupOrdererGroups:(id)groups
{
  groupsCopy = groups;
  selfCopy = self;
  v6 = sub_18907AEA8(groupsCopy);

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

- (void)_groupOrdererDidUpdate:(id)update
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer);
  if (v4)
  {
    v5 = v4 == update;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    *(&self->super.isa + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_resolvedSections) = 0;
    updateCopy = update;
    selfCopy = self;

    sub_18907A694();
  }
}

- (void)invalidateAssistant:(id)assistant
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong invalidate];
  }
}

- (void)configurationDependenciesChangedForButtonBarButton:(id)button representingBarButtonItem:(id)item
{
  buttonCopy = button;
  itemCopy = item;
  selfCopy = self;
  sub_18907CE10(itemCopy);
}

- (CGPoint)convertPoint:(CGPoint)point toCoordinateSpace:(id)space
{
  v4 = sub_18907B854(point.x, point.y, self, a2, space, &selRef_convertPoint_toCoordinateSpace_);
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromCoordinateSpace:(id)space
{
  v4 = sub_18907B854(point.x, point.y, self, a2, space, &selRef_convertPoint_fromCoordinateSpace_);
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space
{
  v4 = sub_18907B8E0(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, self, a2, space, &selRef_convertRect_toCoordinateSpace_);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space
{
  v4 = sub_18907B8E0(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, self, a2, space, &selRef_convertRect_fromCoordinateSpace_);
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