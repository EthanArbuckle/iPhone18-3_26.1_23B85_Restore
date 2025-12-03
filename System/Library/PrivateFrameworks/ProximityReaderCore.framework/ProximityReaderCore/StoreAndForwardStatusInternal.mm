@interface StoreAndForwardStatusInternal
- (NSString)description;
- (_TtC19ProximityReaderCore29StoreAndForwardStatusInternal)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation StoreAndForwardStatusInternal

- (NSString)description
{
  selfCopy = self;
  StoreAndForwardStatusInternal.description.getter();

  v3 = sub_26121CC50();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC19ProximityReaderCore29StoreAndForwardStatusInternal_readCount);
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_26121CC50();
  [coderCopy encodeInteger:v4 forKey:v7];

  v8 = sub_26121C700();
  v9 = sub_26121CC50();
  [coderCopy encodeObject:v8 forKey:v9];
}

- (_TtC19ProximityReaderCore29StoreAndForwardStatusInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end