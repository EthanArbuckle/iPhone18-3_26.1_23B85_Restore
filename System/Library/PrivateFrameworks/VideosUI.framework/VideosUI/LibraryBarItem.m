@interface LibraryBarItem
- (BOOL)isEqual:(id)a3;
- (NSString)description;
@end

@implementation LibraryBarItem

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

  v6 = sub_1E3D71574(v8);

  sub_1E329505C(v8);
  return v6;
}

- (NSString)description
{
  v2 = self;
  sub_1E3D717D0();

  v3 = sub_1E4205ED4();

  return v3;
}

@end