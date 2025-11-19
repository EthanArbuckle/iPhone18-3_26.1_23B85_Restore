@interface VolumeSettingAttributeResolutionResult
+ (id)confirmationRequiredWithVolumeSettingAttributeToConfirm:(int64_t)a3;
+ (id)successWithResolvedVolumeSettingAttribute:(int64_t)a3;
@end

@implementation VolumeSettingAttributeResolutionResult

+ (id)successWithResolvedVolumeSettingAttribute:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28C94(a3);

  return v4;
}

+ (id)confirmationRequiredWithVolumeSettingAttributeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28D20(a3);

  return v4;
}

@end