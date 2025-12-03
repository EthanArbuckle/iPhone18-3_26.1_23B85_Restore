@interface PINData
- (_TtC19ProximityReaderCore7PINData)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PINData

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PINData.encode(with:)(coderCopy);
}

- (_TtC19ProximityReaderCore7PINData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end