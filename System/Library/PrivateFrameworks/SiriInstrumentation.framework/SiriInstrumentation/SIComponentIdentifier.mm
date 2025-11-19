@interface SIComponentIdentifier
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (SIComponentIdentifier)initWithName:(int)a3 uuid:(id)a4;
- (int64_t)hash;
@end

@implementation SIComponentIdentifier

- (SIComponentIdentifier)initWithName:(int)a3 uuid:(id)a4
{
  v5 = sub_1AA651944();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AA651914();
  return ComponentIdentifier.init(name:uuid:)(a3, v7);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1AA651CA4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1A9C6D5BC(v8);

  sub_1A9C6DFD8(v8, &qword_1EB400510);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_1A9C6D72C();

  return v3;
}

- (NSString)debugDescription
{
  v2 = self;
  sub_1A9C6D8AC();

  v3 = sub_1AA651A94();

  return v3;
}

@end