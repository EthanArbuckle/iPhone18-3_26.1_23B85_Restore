@interface DeviceProximityResolutionResult
+ (id)confirmationRequiredWithDeviceProximityToConfirm:(int64_t)confirm;
+ (id)successWithResolvedDeviceProximity:(int64_t)proximity;
@end

@implementation DeviceProximityResolutionResult

+ (id)successWithResolvedDeviceProximity:(int64_t)proximity
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28C94(proximity);

  return v4;
}

+ (id)confirmationRequiredWithDeviceProximityToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_268B28D20(confirm);

  return v4;
}

@end