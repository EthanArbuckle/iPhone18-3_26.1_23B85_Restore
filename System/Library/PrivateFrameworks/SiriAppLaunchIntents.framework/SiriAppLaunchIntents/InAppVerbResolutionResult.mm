@interface InAppVerbResolutionResult
+ (id)confirmationRequiredWithInAppVerbToConfirm:(int64_t)confirm;
+ (id)successWithResolvedInAppVerb:(int64_t)verb;
@end

@implementation InAppVerbResolutionResult

+ (id)successWithResolvedInAppVerb:(int64_t)verb
{
  swift_getObjCClassMetadata();
  v4 = static InAppVerbResolutionResult.success(with:)(verb);

  return v4;
}

+ (id)confirmationRequiredWithInAppVerbToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static InAppVerbResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end