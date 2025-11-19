@interface PhotosPageContainerView.Configuration
- (PXGSingleViewLayout)weakLayout;
- (_TtCC12PhotosUICore23PhotosPageContainerView13Configuration)init;
- (void)setWeakLayout:(id)a3;
@end

@implementation PhotosPageContainerView.Configuration

- (PXGSingleViewLayout)weakLayout
{
  v3 = OBJC_IVAR____TtCC12PhotosUICore23PhotosPageContainerView13Configuration_weakLayout;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setWeakLayout:(id)a3
{
  v5 = OBJC_IVAR____TtCC12PhotosUICore23PhotosPageContainerView13Configuration_weakLayout;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtCC12PhotosUICore23PhotosPageContainerView13Configuration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end