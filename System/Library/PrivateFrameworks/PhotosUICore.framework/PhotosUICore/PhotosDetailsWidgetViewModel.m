@interface PhotosDetailsWidgetViewModel
- (_TtC12PhotosUICore28PhotosDetailsWidgetViewModel)init;
- (void)photoLibraryDidChange:(id)a3;
- (void)preferredContentSizeDidChangeWithNotification:(id)a3;
@end

@implementation PhotosDetailsWidgetViewModel

- (void)preferredContentSizeDidChangeWithNotification:(id)a3
{
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x158);
  v4 = self;
  v3();
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x88);
  v5 = a3;
  v11 = self;
  v6 = v4();
  sub_1A3C52C70(0, &qword_1EB126660);
  v7 = sub_1A524DC34();

  if (v7)
  {
    v8 = [v7 objectAfterChanges];

    if (v8)
    {
      v9 = OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_asset;
      swift_beginAccess();
      v10 = *(&v11->super.isa + v9);
      *(&v11->super.isa + v9) = v8;

      return;
    }
  }

  else
  {
  }
}

- (_TtC12PhotosUICore28PhotosDetailsWidgetViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end