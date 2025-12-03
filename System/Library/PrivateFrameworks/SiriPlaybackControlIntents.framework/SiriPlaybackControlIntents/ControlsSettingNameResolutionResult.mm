@interface ControlsSettingNameResolutionResult
+ (id)confirmationRequiredWithControlsSettingNameToConfirm:(int64_t)confirm;
+ (id)successWithResolvedControlsSettingName:(int64_t)name;
@end

@implementation ControlsSettingNameResolutionResult

+ (id)successWithResolvedControlsSettingName:(int64_t)name
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28C94(name);

  return v4;
}

+ (id)confirmationRequiredWithControlsSettingNameToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28D20(confirm);

  return v4;
}

@end