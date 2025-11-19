@interface SharedAlbumsActivityEntryItemListManager
- (_TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager)init;
- (void)activityEntryRepositoryDidChange:(id)a3;
- (void)photoLibraryDidChange:(id)a3;
@end

@implementation SharedAlbumsActivityEntryItemListManager

- (void)activityEntryRepositoryDidChange:(id)a3
{
  v4 = a3;
  self;
  sub_1A4280604();
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  self;
  sub_1A427C2B8(v4);
}

- (_TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end