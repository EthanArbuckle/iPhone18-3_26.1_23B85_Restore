@interface AppReferenceResolutionResult
+ (id)confirmationRequiredWithAppReferenceToConfirm:(int64_t)confirm;
+ (id)successWithResolvedAppReference:(int64_t)reference;
@end

@implementation AppReferenceResolutionResult

+ (id)successWithResolvedAppReference:(int64_t)reference
{
  swift_getObjCClassMetadata();
  v4 = static AppReferenceResolutionResult.success(with:)(reference);

  return v4;
}

+ (id)confirmationRequiredWithAppReferenceToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static AppReferenceResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end