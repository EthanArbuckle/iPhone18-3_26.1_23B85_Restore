@interface VASMerchantInternal
- (_TtC19ProximityReaderCore19VASMerchantInternal)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VASMerchantInternal

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  VASMerchantInternal.encode(with:)(coderCopy);
}

- (_TtC19ProximityReaderCore19VASMerchantInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end