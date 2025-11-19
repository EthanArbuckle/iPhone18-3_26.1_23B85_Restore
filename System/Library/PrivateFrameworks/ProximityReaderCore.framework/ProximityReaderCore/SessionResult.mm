@interface SessionResult
- (_TtC19ProximityReaderCore13SessionResult)init;
- (_TtC19ProximityReaderCore13SessionResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SessionResult

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SessionResult.encode(with:)(v4);
}

- (_TtC19ProximityReaderCore13SessionResult)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_2611DEFFC(v3);

  return v4;
}

- (_TtC19ProximityReaderCore13SessionResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end