@interface PASAccountContextExtension
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC21ProximityAppleIDSetup26PASAccountContextExtension)init;
- (_TtC21ProximityAppleIDSetup26PASAccountContextExtension)initWithCoder:(id)coder;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PASAccountContextExtension

- (NSString)description
{
  selfCopy = self;
  PASAccountContextExtension.description.getter();

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

  v6 = PASAccountContextExtension.isEqual(_:)(v8);

  sub_260FAC3F0(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = PASAccountContextExtension.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PASAccountContextExtension.encode(with:)(coderCopy);
}

- (_TtC21ProximityAppleIDSetup26PASAccountContextExtension)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_260FDEED8(coderCopy);

  return v4;
}

- (_TtC21ProximityAppleIDSetup26PASAccountContextExtension)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end