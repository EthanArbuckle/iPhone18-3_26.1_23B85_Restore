@interface SIComponentIdentifier
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (SIComponentIdentifier)initWithName:(int)name uuid:(id)uuid;
- (int64_t)hash;
@end

@implementation SIComponentIdentifier

- (SIComponentIdentifier)initWithName:(int)name uuid:(id)uuid
{
  v5 = sub_1AA651944();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AA651914();
  return ComponentIdentifier.init(name:uuid:)(name, v7);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1AA651CA4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1A9C6D5BC(v8);

  sub_1A9C6DFD8(v8, &qword_1EB400510);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1A9C6D72C();

  return v3;
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_1A9C6D8AC();

  v3 = sub_1AA651A94();

  return v3;
}

@end