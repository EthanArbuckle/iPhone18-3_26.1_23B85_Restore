@interface AppReferenceResolutionResult
+ (id)confirmationRequiredWithAppReferenceToConfirm:(int64_t)a3;
+ (id)successWithResolvedAppReference:(int64_t)a3;
@end

@implementation AppReferenceResolutionResult

+ (id)successWithResolvedAppReference:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static AppReferenceResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithAppReferenceToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static AppReferenceResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end