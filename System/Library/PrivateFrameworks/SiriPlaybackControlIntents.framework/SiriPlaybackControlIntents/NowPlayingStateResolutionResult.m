@interface NowPlayingStateResolutionResult
+ (id)confirmationRequiredWithNowPlayingStateToConfirm:(int64_t)a3;
+ (id)successWithResolvedNowPlayingState:(int64_t)a3;
@end

@implementation NowPlayingStateResolutionResult

+ (id)successWithResolvedNowPlayingState:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28C94(a3);

  return v4;
}

+ (id)confirmationRequiredWithNowPlayingStateToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28D20(a3);

  return v4;
}

@end