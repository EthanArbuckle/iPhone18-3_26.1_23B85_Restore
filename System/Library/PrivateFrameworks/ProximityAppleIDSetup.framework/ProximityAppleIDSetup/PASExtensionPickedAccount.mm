@interface PASExtensionPickedAccount
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC21ProximityAppleIDSetup25PASExtensionPickedAccount)init;
- (_TtC21ProximityAppleIDSetup25PASExtensionPickedAccount)initWithCoder:(id)coder;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PASExtensionPickedAccount

- (NSString)description
{
  selfCopy = self;
  PASExtensionPickedAccount.description.getter();

  v3 = sub_2610BC9D4();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2610BCEA4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = PASExtensionPickedAccount.isEqual(_:)(v8);

  sub_260FAC3F0(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = PASExtensionPickedAccount.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PASExtensionPickedAccount.encode(with:)(coderCopy);
}

- (_TtC21ProximityAppleIDSetup25PASExtensionPickedAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_260FACAA0(coderCopy);

  return v4;
}

- (_TtC21ProximityAppleIDSetup25PASExtensionPickedAccount)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end