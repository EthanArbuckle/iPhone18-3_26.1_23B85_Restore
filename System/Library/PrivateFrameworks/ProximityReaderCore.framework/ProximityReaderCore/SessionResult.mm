@interface SessionResult
- (_TtC19ProximityReaderCore13SessionResult)init;
- (_TtC19ProximityReaderCore13SessionResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SessionResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SessionResult.encode(with:)(coderCopy);
}

- (_TtC19ProximityReaderCore13SessionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_2611DEFFC(coderCopy);

  return v4;
}

- (_TtC19ProximityReaderCore13SessionResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end