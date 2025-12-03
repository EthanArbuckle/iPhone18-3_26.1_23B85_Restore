@interface AppNounResolutionResult
+ (id)confirmationRequiredWithAppNounToConfirm:(int64_t)confirm;
+ (id)successWithResolvedAppNoun:(int64_t)noun;
@end

@implementation AppNounResolutionResult

+ (id)successWithResolvedAppNoun:(int64_t)noun
{
  swift_getObjCClassMetadata();
  v4 = static AppNounResolutionResult.success(with:)(noun);

  return v4;
}

+ (id)confirmationRequiredWithAppNounToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static AppNounResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end