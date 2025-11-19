@interface CaseTypeResolutionResult
+ (id)confirmationRequiredWithCaseTypeToConfirm:(int64_t)a3;
+ (id)successWithResolvedCaseType:(int64_t)a3;
@end

@implementation CaseTypeResolutionResult

+ (id)successWithResolvedCaseType:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static CaseTypeResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithCaseTypeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static CaseTypeResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end