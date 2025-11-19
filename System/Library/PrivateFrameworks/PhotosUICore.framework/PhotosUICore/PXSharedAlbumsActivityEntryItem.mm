@interface PXSharedAlbumsActivityEntryItem
- (NSDate)date;
- (NSString)contributorDisplayName;
- (PXSharedAlbumsActivityEntryAvatarConfiguration)avatarInfo;
- (PXSharedAlbumsActivityEntryItem)init;
@end

@implementation PXSharedAlbumsActivityEntryItem

- (NSDate)date
{
  v3 = sub_1A5241144();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_date, v3, v5);
  v8 = sub_1A5241074();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSString)contributorDisplayName
{
  v2 = *(self + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_activityEntry);
  v3 = self;
  v4 = [v2 contributorDisplayName];
  if (!v4)
  {
    sub_1A524C674();
    v4 = sub_1A524C634();
  }

  return v4;
}

- (PXSharedAlbumsActivityEntryAvatarConfiguration)avatarInfo
{
  v2 = [*(self + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_activityEntry) avatarConfiguration];

  return v2;
}

- (PXSharedAlbumsActivityEntryItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end