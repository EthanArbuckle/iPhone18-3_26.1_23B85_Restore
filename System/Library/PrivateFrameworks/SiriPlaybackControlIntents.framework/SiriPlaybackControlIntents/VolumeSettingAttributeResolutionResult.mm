@interface VolumeSettingAttributeResolutionResult
+ (id)confirmationRequiredWithVolumeSettingAttributeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedVolumeSettingAttribute:(int64_t)attribute;
@end

@implementation VolumeSettingAttributeResolutionResult

+ (id)successWithResolvedVolumeSettingAttribute:(int64_t)attribute
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28C94(attribute);

  return v4;
}

+ (id)confirmationRequiredWithVolumeSettingAttributeToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28D20(confirm);

  return v4;
}

@end