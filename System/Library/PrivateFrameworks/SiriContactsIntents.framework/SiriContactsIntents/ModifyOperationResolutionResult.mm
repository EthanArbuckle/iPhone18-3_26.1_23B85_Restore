@interface ModifyOperationResolutionResult
+ (id)confirmationRequiredWithModifyOperationToConfirm:(int64_t)confirm;
+ (id)successWithResolvedModifyOperation:(int64_t)operation;
@end

@implementation ModifyOperationResolutionResult

+ (id)successWithResolvedModifyOperation:(int64_t)operation
{
  swift_getObjCClassMetadata();
  v4 = static ContactAttributeTypeResolutionResult.success(with:)(operation);

  return v4;
}

+ (id)confirmationRequiredWithModifyOperationToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static ContactAttributeTypeResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end