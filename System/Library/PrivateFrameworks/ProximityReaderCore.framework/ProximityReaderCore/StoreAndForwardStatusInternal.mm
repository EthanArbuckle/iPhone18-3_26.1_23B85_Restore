@interface StoreAndForwardStatusInternal
- (NSString)description;
- (_TtC19ProximityReaderCore29StoreAndForwardStatusInternal)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation StoreAndForwardStatusInternal

- (NSString)description
{
  v2 = self;
  StoreAndForwardStatusInternal.description.getter();

  v3 = sub_26121CC50();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC19ProximityReaderCore29StoreAndForwardStatusInternal_readCount);
  v5 = a3;
  v6 = self;
  v7 = sub_26121CC50();
  [v5 encodeInteger:v4 forKey:v7];

  v8 = sub_26121C700();
  v9 = sub_26121CC50();
  [v5 encodeObject:v8 forKey:v9];
}

- (_TtC19ProximityReaderCore29StoreAndForwardStatusInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end