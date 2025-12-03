@interface RemoteBarItem
- (BOOL)isEqual:(id)equal;
@end

@implementation RemoteBarItem

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

  v6 = sub_1E3D497F4(v8);

  sub_1E325F748(v8, &unk_1ECF296E0);
  return v6 & 1;
}

@end