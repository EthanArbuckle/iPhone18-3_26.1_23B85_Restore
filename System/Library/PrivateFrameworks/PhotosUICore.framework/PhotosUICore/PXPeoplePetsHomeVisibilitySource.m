@interface PXPeoplePetsHomeVisibilitySource
- (PXPeoplePetsHomeVisibilitySource)init;
- (unint64_t)visibility;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3;
- (void)setVisibility:(unint64_t)a3;
@end

@implementation PXPeoplePetsHomeVisibilitySource

- (unint64_t)visibility
{
  v3 = OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_visibility;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setVisibility:(unint64_t)a3
{
  v5 = OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_visibility;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (PXPeoplePetsHomeVisibilitySource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3
{
  v4 = a3;
  v5 = self;
  PeoplePetsHomeVisibilitySource.photoLibraryDidChange(onMainQueue:)(v4);
}

@end