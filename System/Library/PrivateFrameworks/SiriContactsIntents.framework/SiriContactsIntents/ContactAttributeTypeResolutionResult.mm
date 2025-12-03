@interface ContactAttributeTypeResolutionResult
+ (id)confirmationRequiredWithContactAttributeTypeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedContactAttributeType:(int64_t)type;
@end

@implementation ContactAttributeTypeResolutionResult

+ (id)successWithResolvedContactAttributeType:(int64_t)type
{
  swift_getObjCClassMetadata();
  v4 = static ContactAttributeTypeResolutionResult.success(with:)(type);

  return v4;
}

+ (id)confirmationRequiredWithContactAttributeTypeToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static ContactAttributeTypeResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end