@interface RemoveFromWatchListContentResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
@end

@implementation RemoveFromWatchListContentResolutionResult

+ (id)unsupportedForReason:(int64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = static RemoveFromWatchListContentResolutionResult.unsupported(forReason:)(reason);

  return v4;
}

@end