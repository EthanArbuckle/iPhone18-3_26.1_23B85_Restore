@interface PINConfiguration
- (_TtC19ProximityReaderCore16PINConfiguration)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PINConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PINConfiguration.encode(with:)(coderCopy);
}

- (_TtC19ProximityReaderCore16PINConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end