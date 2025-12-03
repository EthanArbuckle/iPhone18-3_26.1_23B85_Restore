@interface DeviceSpecificityLevelResolutionResult
+ (id)confirmationRequiredWithDeviceSpecificityLevelToConfirm:(int64_t)confirm;
+ (id)successWithResolvedDeviceSpecificityLevel:(int64_t)level;
@end

@implementation DeviceSpecificityLevelResolutionResult

+ (id)successWithResolvedDeviceSpecificityLevel:(int64_t)level
{
  swift_getObjCClassMetadata();
  v4 = sub_266DA26D4(level);

  return v4;
}

+ (id)confirmationRequiredWithDeviceSpecificityLevelToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_266DA2760(confirm);

  return v4;
}

@end