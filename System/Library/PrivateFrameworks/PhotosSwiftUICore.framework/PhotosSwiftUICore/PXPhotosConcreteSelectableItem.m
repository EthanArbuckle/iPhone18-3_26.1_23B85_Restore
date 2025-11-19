@interface PXPhotosConcreteSelectableItem
- (BOOL)isEqual:(id)a3;
- (NSString)selectionIdentifier;
- (int64_t)hash;
@end

@implementation PXPhotosConcreteSelectableItem

- (NSString)selectionIdentifier
{
  v2 = self;
  sub_1C11D03D8();

  v3 = sub_1C1265E70();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C12667F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1C11D0474(v8);

  sub_1C0FA4B78(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_1C11D0650();

  return v3;
}

@end