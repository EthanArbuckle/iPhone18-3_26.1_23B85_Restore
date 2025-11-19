@interface PlaybackSpeedTypeResolutionResult
+ (id)confirmationRequiredWithPlaybackSpeedTypeToConfirm:(int64_t)a3;
+ (id)successWithResolvedPlaybackSpeedType:(int64_t)a3;
@end

@implementation PlaybackSpeedTypeResolutionResult

+ (id)successWithResolvedPlaybackSpeedType:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28C94(a3);

  return v4;
}

+ (id)confirmationRequiredWithPlaybackSpeedTypeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28D20(a3);

  return v4;
}

@end