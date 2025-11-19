@interface VMUAttributeGraphTypeIdentifier
- (VMUAttributeGraphTypeIdentifier)init;
- (id)classInfoForAttributeGraphValueWithMetadata:(unint64_t)a3;
- (unint64_t)metadataPointerForAllocation:(unint64_t)a3;
@end

@implementation VMUAttributeGraphTypeIdentifier

- (unint64_t)metadataPointerForAllocation:(unint64_t)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___VMUAttributeGraphTypeIdentifier_swiftValueInAttributeGraphAddressesToTypeMetadata);
  if (*(v3 + 16) && (v4 = sub_1C6849008(a3), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

- (id)classInfoForAttributeGraphValueWithMetadata:(unint64_t)a3
{
  v4 = self;
  v5 = sub_1C6848D1C(a3);

  return v5;
}

- (VMUAttributeGraphTypeIdentifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end