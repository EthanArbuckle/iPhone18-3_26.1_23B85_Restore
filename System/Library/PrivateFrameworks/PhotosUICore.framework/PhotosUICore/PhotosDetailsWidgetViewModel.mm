@interface PhotosDetailsWidgetViewModel
- (_TtC12PhotosUICore28PhotosDetailsWidgetViewModel)init;
- (void)photoLibraryDidChange:(id)change;
- (void)preferredContentSizeDidChangeWithNotification:(id)notification;
@end

@implementation PhotosDetailsWidgetViewModel

- (void)preferredContentSizeDidChangeWithNotification:(id)notification
{
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x158);
  selfCopy = self;
  v3();
}

- (void)photoLibraryDidChange:(id)change
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x88);
  changeCopy = change;
  selfCopy = self;
  v6 = v4();
  sub_1A3C52C70(0, &qword_1EB126660);
  v7 = sub_1A524DC34();

  if (v7)
  {
    objectAfterChanges = [v7 objectAfterChanges];

    if (objectAfterChanges)
    {
      v9 = OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_asset;
      swift_beginAccess();
      v10 = *(&selfCopy->super.isa + v9);
      *(&selfCopy->super.isa + v9) = objectAfterChanges;

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