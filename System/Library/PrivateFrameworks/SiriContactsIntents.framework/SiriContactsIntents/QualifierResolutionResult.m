@interface QualifierResolutionResult
+ (id)confirmationRequiredWithQualifierToConfirm:(int64_t)a3;
+ (id)successWithResolvedQualifier:(int64_t)a3;
@end

@implementation QualifierResolutionResult

+ (id)successWithResolvedQualifier:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static ContactAttributeTypeResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithQualifierToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static ContactAttributeTypeResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end