@interface DeviceSpecificityLevelResolutionResult
+ (id)confirmationRequiredWithDeviceSpecificityLevelToConfirm:(int64_t)a3;
+ (id)successWithResolvedDeviceSpecificityLevel:(int64_t)a3;
@end

@implementation DeviceSpecificityLevelResolutionResult

+ (id)successWithResolvedDeviceSpecificityLevel:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_266DA26D4(a3);

  return v4;
}

+ (id)confirmationRequiredWithDeviceSpecificityLevelToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_266DA2760(a3);

  return v4;
}

@end