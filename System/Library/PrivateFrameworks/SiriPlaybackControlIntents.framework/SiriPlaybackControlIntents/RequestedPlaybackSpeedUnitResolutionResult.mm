@interface RequestedPlaybackSpeedUnitResolutionResult
+ (id)confirmationRequiredWithRequestedPlaybackSpeedUnitToConfirm:(int64_t)a3;
+ (id)successWithResolvedRequestedPlaybackSpeedUnit:(int64_t)a3;
@end

@implementation RequestedPlaybackSpeedUnitResolutionResult

+ (id)successWithResolvedRequestedPlaybackSpeedUnit:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28C94(a3);

  return v4;
}

+ (id)confirmationRequiredWithRequestedPlaybackSpeedUnitToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28D20(a3);

  return v4;
}

@end