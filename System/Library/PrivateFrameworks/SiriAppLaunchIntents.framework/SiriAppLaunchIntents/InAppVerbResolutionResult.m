@interface InAppVerbResolutionResult
+ (id)confirmationRequiredWithInAppVerbToConfirm:(int64_t)a3;
+ (id)successWithResolvedInAppVerb:(int64_t)a3;
@end

@implementation InAppVerbResolutionResult

+ (id)successWithResolvedInAppVerb:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static InAppVerbResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithInAppVerbToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static InAppVerbResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end