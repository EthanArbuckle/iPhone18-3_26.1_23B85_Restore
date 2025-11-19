@interface TransactionInternal
- (NSString)description;
- (_TtC19ProximityReaderCore19TransactionInternal)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TransactionInternal

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  TransactionInternal.encode(with:)(v4);
}

- (NSString)description
{
  v2 = self;
  TransactionInternal.description.getter();

  v3 = sub_26121CC50();

  return v3;
}

- (_TtC19ProximityReaderCore19TransactionInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end