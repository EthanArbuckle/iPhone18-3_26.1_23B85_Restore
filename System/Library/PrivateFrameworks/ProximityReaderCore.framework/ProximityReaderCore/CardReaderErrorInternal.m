@interface CardReaderErrorInternal
- (NSString)description;
- (_TtC19ProximityReaderCore23CardReaderErrorInternal)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CardReaderErrorInternal

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2611D036C(v4);
}

- (NSString)description
{
  v2 = self;
  sub_2611D054C();

  v3 = sub_26121CC50();

  return v3;
}

- (_TtC19ProximityReaderCore23CardReaderErrorInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end