@interface RemoteSidebarItem
- (BOOL)isEqual:(id)a3;
@end

@implementation RemoteSidebarItem

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1E3BF3200(v8);

  sub_1E329505C(v8);
  return v6 & 1;
}

@end