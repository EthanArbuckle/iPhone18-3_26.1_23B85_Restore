@interface AppNounResolutionResult
+ (id)confirmationRequiredWithAppNounToConfirm:(int64_t)a3;
+ (id)successWithResolvedAppNoun:(int64_t)a3;
@end

@implementation AppNounResolutionResult

+ (id)successWithResolvedAppNoun:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static AppNounResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithAppNounToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static AppNounResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end