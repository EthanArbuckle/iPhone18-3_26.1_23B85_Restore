@interface VolumeSettingQualifierResolutionResult
+ (id)confirmationRequiredWithVolumeSettingQualifierToConfirm:(int64_t)confirm;
+ (id)successWithResolvedVolumeSettingQualifier:(int64_t)qualifier;
@end

@implementation VolumeSettingQualifierResolutionResult

+ (id)successWithResolvedVolumeSettingQualifier:(int64_t)qualifier
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28C94(qualifier);

  return v4;
}

+ (id)confirmationRequiredWithVolumeSettingQualifierToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28D20(confirm);

  return v4;
}

@end