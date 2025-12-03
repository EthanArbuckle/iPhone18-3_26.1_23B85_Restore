@interface VMUAttributeGraphTypeIdentifier
- (VMUAttributeGraphTypeIdentifier)init;
- (id)classInfoForAttributeGraphValueWithMetadata:(unint64_t)metadata;
- (unint64_t)metadataPointerForAllocation:(unint64_t)allocation;
@end

@implementation VMUAttributeGraphTypeIdentifier

- (unint64_t)metadataPointerForAllocation:(unint64_t)allocation
{
  v3 = *(&self->super.isa + OBJC_IVAR___VMUAttributeGraphTypeIdentifier_swiftValueInAttributeGraphAddressesToTypeMetadata);
  if (*(v3 + 16) && (v4 = sub_1C6849008(allocation), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

- (id)classInfoForAttributeGraphValueWithMetadata:(unint64_t)metadata
{
  selfCopy = self;
  v5 = sub_1C6848D1C(metadata);

  return v5;
}

- (VMUAttributeGraphTypeIdentifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end