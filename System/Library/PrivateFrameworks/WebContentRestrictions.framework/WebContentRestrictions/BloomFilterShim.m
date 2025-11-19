@interface BloomFilterShim
- (BOOL)contains:(id)a3;
- (_TtC22WebContentRestrictions15BloomFilterShim)init;
@end

@implementation BloomFilterShim

- (BOOL)contains:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = BloomFilterShim.contains(_:)(v8);

  return v4 & 1;
}

- (_TtC22WebContentRestrictions15BloomFilterShim)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end