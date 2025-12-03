@interface DeviceResolutionResult
+ (id)confirmationRequiredWithDeviceToConfirm:(id)confirm;
+ (id)disambiguationWithDevicesToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedDevice:(id)device;
@end

@implementation DeviceResolutionResult

+ (id)successWithResolvedDevice:(id)device
{
  swift_getObjCClassMetadata();
  deviceCopy = device;
  v5 = sub_268B2CC98(deviceCopy);

  return v5;
}

+ (id)disambiguationWithDevicesToDisambiguate:(id)disambiguate
{
  type metadata accessor for Device();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B2CCFC(v3);

  return v4;
}

+ (id)confirmationRequiredWithDeviceToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_268B2CE38(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B2D74C();
}

@end