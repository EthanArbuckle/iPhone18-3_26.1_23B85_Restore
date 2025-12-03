@interface LibrarySidebarItem
- (BOOL)isEqual:(id)equal;
@end

@implementation LibrarySidebarItem

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1E37EEBDC(v8);

  sub_1E329505C(v8);
  return v6 & 1;
}

@end