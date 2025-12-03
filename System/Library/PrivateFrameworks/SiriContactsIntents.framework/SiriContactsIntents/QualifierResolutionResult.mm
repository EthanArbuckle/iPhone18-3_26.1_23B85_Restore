@interface QualifierResolutionResult
+ (id)confirmationRequiredWithQualifierToConfirm:(int64_t)confirm;
+ (id)successWithResolvedQualifier:(int64_t)qualifier;
@end

@implementation QualifierResolutionResult

+ (id)successWithResolvedQualifier:(int64_t)qualifier
{
  swift_getObjCClassMetadata();
  v4 = static ContactAttributeTypeResolutionResult.success(with:)(qualifier);

  return v4;
}

+ (id)confirmationRequiredWithQualifierToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static ContactAttributeTypeResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end