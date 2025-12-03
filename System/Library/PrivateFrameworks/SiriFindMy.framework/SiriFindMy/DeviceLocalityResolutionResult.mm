@interface DeviceLocalityResolutionResult
+ (id)confirmationRequiredWithDeviceLocalityToConfirm:(int64_t)confirm;
+ (id)successWithResolvedDeviceLocality:(int64_t)locality;
@end

@implementation DeviceLocalityResolutionResult

+ (id)successWithResolvedDeviceLocality:(int64_t)locality
{
  swift_getObjCClassMetadata();
  v4 = sub_266DA26D4(locality);

  return v4;
}

+ (id)confirmationRequiredWithDeviceLocalityToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_266DA2760(confirm);

  return v4;
}

@end