@interface AddToWatchListContentResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
@end

@implementation AddToWatchListContentResolutionResult

+ (id)unsupportedForReason:(int64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = static AddToWatchListContentResolutionResult.unsupported(forReason:)(reason);

  return v4;
}

@end