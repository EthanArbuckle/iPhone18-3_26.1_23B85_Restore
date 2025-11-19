@interface PXSharedAlbumsActivityEntryItemList
- (PXSharedAlbumsActivityEntryItemList)init;
- (PXSharedAlbumsActivityEntryItemList)initWithActivities:(id)a3;
- (id)itemAtIndex:(int64_t)a3;
@end

@implementation PXSharedAlbumsActivityEntryItemList

- (PXSharedAlbumsActivityEntryItemList)initWithActivities:(id)a3
{
  sub_1A46C84B0();
  sub_1A524CA34();
  sub_1A46C7158();
}

- (id)itemAtIndex:(int64_t)a3
{
  v3 = *(self + OBJC_IVAR___PXSharedAlbumsActivityEntryItemList_items);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = self;
    v7 = MEMORY[0x1A59097F0](a3, v3);

    v4 = v7;
    goto LABEL_5;
  }

  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a3)
  {
LABEL_10:
    __break(1u);
    return self;
  }

  v4 = *(v3 + 8 * a3 + 32);
LABEL_5:

  return v4;
}

- (PXSharedAlbumsActivityEntryItemList)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end