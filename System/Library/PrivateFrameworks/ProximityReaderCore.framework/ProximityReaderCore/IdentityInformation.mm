@interface IdentityInformation
- (_TtC19ProximityReaderCore19IdentityInformation)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityInformation

- (_TtC19ProximityReaderCore19IdentityInformation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityInformation.encode(with:)(coderCopy);
}

@end