@interface CaseTypeResolutionResult
+ (id)confirmationRequiredWithCaseTypeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedCaseType:(int64_t)type;
@end

@implementation CaseTypeResolutionResult

+ (id)successWithResolvedCaseType:(int64_t)type
{
  swift_getObjCClassMetadata();
  v4 = static CaseTypeResolutionResult.success(with:)(type);

  return v4;
}

+ (id)confirmationRequiredWithCaseTypeToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static CaseTypeResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end