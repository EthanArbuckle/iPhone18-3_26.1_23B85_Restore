@interface ContactAttributeTypeResolutionResult
+ (id)confirmationRequiredWithContactAttributeTypeToConfirm:(int64_t)a3;
+ (id)successWithResolvedContactAttributeType:(int64_t)a3;
@end

@implementation ContactAttributeTypeResolutionResult

+ (id)successWithResolvedContactAttributeType:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static ContactAttributeTypeResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithContactAttributeTypeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static ContactAttributeTypeResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end