@interface NavigationBarLargeTitleReparentingHelper.TemporaryDonatedTitle
- (CGRect)frameInGlobalCoordinateSpace;
- (_TtCC5UIKit40NavigationBarLargeTitleReparentingHelper21TemporaryDonatedTitle)init;
@end

@implementation NavigationBarLargeTitleReparentingHelper.TemporaryDonatedTitle

- (CGRect)frameInGlobalCoordinateSpace
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCC5UIKit40NavigationBarLargeTitleReparentingHelper21TemporaryDonatedTitle_frameInGlobalCoordinateSpace);
  v3 = *(&self->view + OBJC_IVAR____TtCC5UIKit40NavigationBarLargeTitleReparentingHelper21TemporaryDonatedTitle_frameInGlobalCoordinateSpace);
  v4 = *(&self->frameInGlobalCoordinateSpace.origin.x + OBJC_IVAR____TtCC5UIKit40NavigationBarLargeTitleReparentingHelper21TemporaryDonatedTitle_frameInGlobalCoordinateSpace);
  v5 = *(&self->frameInGlobalCoordinateSpace.origin.y + OBJC_IVAR____TtCC5UIKit40NavigationBarLargeTitleReparentingHelper21TemporaryDonatedTitle_frameInGlobalCoordinateSpace);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (_TtCC5UIKit40NavigationBarLargeTitleReparentingHelper21TemporaryDonatedTitle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end