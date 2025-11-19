@interface VolumeSettingTypeResolutionResult
+ (id)confirmationRequiredWithVolumeSettingTypeToConfirm:(int64_t)a3;
+ (id)successWithResolvedVolumeSettingType:(int64_t)a3;
@end

@implementation VolumeSettingTypeResolutionResult

+ (id)successWithResolvedVolumeSettingType:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28C94(a3);

  return v4;
}

+ (id)confirmationRequiredWithVolumeSettingTypeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28D20(a3);

  return v4;
}

@end