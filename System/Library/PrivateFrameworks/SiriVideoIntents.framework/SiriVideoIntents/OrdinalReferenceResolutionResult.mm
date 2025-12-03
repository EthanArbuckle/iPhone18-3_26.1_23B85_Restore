@interface OrdinalReferenceResolutionResult
+ (id)confirmationRequiredWithOrdinalReferenceToConfirm:(int64_t)confirm;
+ (id)successWithResolvedOrdinalReference:(int64_t)reference;
@end

@implementation OrdinalReferenceResolutionResult

+ (id)successWithResolvedOrdinalReference:(int64_t)reference
{
  swift_getObjCClassMetadata();
  v4 = static OrdinalReferenceResolutionResult.success(with:)(reference);

  return v4;
}

+ (id)confirmationRequiredWithOrdinalReferenceToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static OrdinalReferenceResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end