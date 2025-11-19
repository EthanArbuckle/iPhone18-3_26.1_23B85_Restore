@interface DeepLaunchRequestedApplicationResolutionResult
+ (id)unsupportedForReason:(uint64_t)a3;
@end

@implementation DeepLaunchRequestedApplicationResolutionResult

+ (id)unsupportedForReason:(uint64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static DeepLaunchPageNameResolutionResult.unsupported(forReason:)(a3);

  return v4;
}

@end