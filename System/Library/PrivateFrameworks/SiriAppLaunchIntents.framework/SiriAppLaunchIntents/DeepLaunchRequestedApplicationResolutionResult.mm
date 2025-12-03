@interface DeepLaunchRequestedApplicationResolutionResult
+ (id)unsupportedForReason:(uint64_t)reason;
@end

@implementation DeepLaunchRequestedApplicationResolutionResult

+ (id)unsupportedForReason:(uint64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = static DeepLaunchPageNameResolutionResult.unsupported(forReason:)(reason);

  return v4;
}

@end