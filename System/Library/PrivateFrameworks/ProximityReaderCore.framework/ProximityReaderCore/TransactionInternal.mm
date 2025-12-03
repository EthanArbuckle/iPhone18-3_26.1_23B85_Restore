@interface TransactionInternal
- (NSString)description;
- (_TtC19ProximityReaderCore19TransactionInternal)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransactionInternal

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  TransactionInternal.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
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