@interface ReadResult
- (_TtC19ProximityReaderCore10ReadResult)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ReadResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ReadResult.encode(with:)(coderCopy);
}

- (_TtC19ProximityReaderCore10ReadResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end