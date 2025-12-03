@interface VolumeSettingUnitResolutionResult
+ (id)confirmationRequiredWithVolumeSettingUnitToConfirm:(int64_t)confirm;
+ (id)successWithResolvedVolumeSettingUnit:(int64_t)unit;
@end

@implementation VolumeSettingUnitResolutionResult

+ (id)successWithResolvedVolumeSettingUnit:(int64_t)unit
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28C94(unit);

  return v4;
}

+ (id)confirmationRequiredWithVolumeSettingUnitToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28D20(confirm);

  return v4;
}

@end