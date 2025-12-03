@interface SharedAlbumsActivityEntryItemListManager
- (_TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager)init;
- (void)activityEntryRepositoryDidChange:(id)change;
- (void)photoLibraryDidChange:(id)change;
@end

@implementation SharedAlbumsActivityEntryItemListManager

- (void)activityEntryRepositoryDidChange:(id)change
{
  changeCopy = change;
  self;
  sub_1A4280604();
}

- (void)photoLibraryDidChange:(id)change
{
  changeCopy = change;
  self;
  sub_1A427C2B8(changeCopy);
}

- (_TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end