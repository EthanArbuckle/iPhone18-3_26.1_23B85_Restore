@interface PhotosPageContainerView.Configuration
- (PXGSingleViewLayout)weakLayout;
- (_TtCC12PhotosUICore23PhotosPageContainerView13Configuration)init;
- (void)setWeakLayout:(id)layout;
@end

@implementation PhotosPageContainerView.Configuration

- (PXGSingleViewLayout)weakLayout
{
  v3 = OBJC_IVAR____TtCC12PhotosUICore23PhotosPageContainerView13Configuration_weakLayout;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setWeakLayout:(id)layout
{
  v5 = OBJC_IVAR____TtCC12PhotosUICore23PhotosPageContainerView13Configuration_weakLayout;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = layout;
  layoutCopy = layout;
}

- (_TtCC12PhotosUICore23PhotosPageContainerView13Configuration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end