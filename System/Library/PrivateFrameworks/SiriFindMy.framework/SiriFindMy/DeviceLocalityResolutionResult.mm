@interface DeviceLocalityResolutionResult
+ (id)confirmationRequiredWithDeviceLocalityToConfirm:(int64_t)a3;
+ (id)successWithResolvedDeviceLocality:(int64_t)a3;
@end

@implementation DeviceLocalityResolutionResult

+ (id)successWithResolvedDeviceLocality:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_266DA26D4(a3);

  return v4;
}

+ (id)confirmationRequiredWithDeviceLocalityToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_266DA2760(a3);

  return v4;
}

@end