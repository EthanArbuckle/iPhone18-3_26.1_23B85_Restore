@interface PASExtensionDevicePair
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC21ProximityAppleIDSetup22PASExtensionDevicePair)init;
- (_TtC21ProximityAppleIDSetup22PASExtensionDevicePair)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PASExtensionDevicePair

- (NSString)description
{
  selfCopy = self;
  PASExtensionDevicePair.description.getter();

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

  v6 = PASExtensionDevicePair.isEqual(_:)(v8);

  sub_260FAC3F0(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PASExtensionDevicePair.encode(with:)(coderCopy);
}

- (_TtC21ProximityAppleIDSetup22PASExtensionDevicePair)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_260FEC7F0(coderCopy);

  return v4;
}

- (_TtC21ProximityAppleIDSetup22PASExtensionDevicePair)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end