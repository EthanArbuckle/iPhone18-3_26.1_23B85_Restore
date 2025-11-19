@interface ModifyOperationResolutionResult
+ (id)confirmationRequiredWithModifyOperationToConfirm:(int64_t)a3;
+ (id)successWithResolvedModifyOperation:(int64_t)a3;
@end

@implementation ModifyOperationResolutionResult

+ (id)successWithResolvedModifyOperation:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static ContactAttributeTypeResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithModifyOperationToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static ContactAttributeTypeResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end