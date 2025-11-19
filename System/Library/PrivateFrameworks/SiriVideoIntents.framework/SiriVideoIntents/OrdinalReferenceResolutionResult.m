@interface OrdinalReferenceResolutionResult
+ (id)confirmationRequiredWithOrdinalReferenceToConfirm:(int64_t)a3;
+ (id)successWithResolvedOrdinalReference:(int64_t)a3;
@end

@implementation OrdinalReferenceResolutionResult

+ (id)successWithResolvedOrdinalReference:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static OrdinalReferenceResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithOrdinalReferenceToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static OrdinalReferenceResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end