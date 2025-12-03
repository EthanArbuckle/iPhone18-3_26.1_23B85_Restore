@interface PXPeoplePetsHomeVisibilitySource
- (PXPeoplePetsHomeVisibilitySource)init;
- (unint64_t)visibility;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
- (void)setVisibility:(unint64_t)visibility;
@end

@implementation PXPeoplePetsHomeVisibilitySource

- (unint64_t)visibility
{
  v3 = OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_visibility;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setVisibility:(unint64_t)visibility
{
  v5 = OBJC_IVAR___PXPeoplePetsHomeVisibilitySource_visibility;
  swift_beginAccess();
  *(&self->super.isa + v5) = visibility;
}

- (PXPeoplePetsHomeVisibilitySource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  queueCopy = queue;
  selfCopy = self;
  PeoplePetsHomeVisibilitySource.photoLibraryDidChange(onMainQueue:)(queueCopy);
}

@end