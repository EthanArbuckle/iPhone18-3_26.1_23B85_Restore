@interface NavigationBarLargeTitleReparentingHelper
- (CGRect)frameInGlobalCoordinateSpace;
- (_TtC5UIKit40NavigationBarLargeTitleReparentingHelper)init;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)scrollViewWasRemovedFromWindow;
- (void)setContributesToPocketContentRect:(BOOL)a3;
@end

@implementation NavigationBarLargeTitleReparentingHelper

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  v4 = self;
  sub_188B4ABEC();
}

- (CGRect)frameInGlobalCoordinateSpace
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5UIKit40NavigationBarLargeTitleReparentingHelper_frameInGlobalCoordinateSpace);
  v3 = *&self->container[OBJC_IVAR____TtC5UIKit40NavigationBarLargeTitleReparentingHelper_frameInGlobalCoordinateSpace];
  v4 = *&self->scrollView[OBJC_IVAR____TtC5UIKit40NavigationBarLargeTitleReparentingHelper_frameInGlobalCoordinateSpace];
  v5 = *(&self->frameInGlobalCoordinateSpace.origin.x + OBJC_IVAR____TtC5UIKit40NavigationBarLargeTitleReparentingHelper_frameInGlobalCoordinateSpace);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setContributesToPocketContentRect:(BOOL)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC5UIKit40NavigationBarLargeTitleReparentingHelper_contributesToPocketContentRect);
  *(&self->super.isa + OBJC_IVAR____TtC5UIKit40NavigationBarLargeTitleReparentingHelper_contributesToPocketContentRect) = a3;
  if (v3 != a3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [Strong setNeedsLayout];
    }
  }
}

- (void)scrollViewWasRemovedFromWindow
{
  v2 = self;
  sub_1891732C4();
}

- (_TtC5UIKit40NavigationBarLargeTitleReparentingHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end