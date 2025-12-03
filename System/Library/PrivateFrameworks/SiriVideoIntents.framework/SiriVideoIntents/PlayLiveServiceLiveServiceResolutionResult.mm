@interface PlayLiveServiceLiveServiceResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
@end

@implementation PlayLiveServiceLiveServiceResolutionResult

+ (id)unsupportedForReason:(int64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = static PlayLiveServiceLiveServiceResolutionResult.unsupported(forReason:)(reason);

  return v4;
}

@end