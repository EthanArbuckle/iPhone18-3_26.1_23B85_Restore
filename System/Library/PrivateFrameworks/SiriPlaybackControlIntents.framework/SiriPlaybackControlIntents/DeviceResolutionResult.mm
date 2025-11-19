@interface DeviceResolutionResult
+ (id)confirmationRequiredWithDeviceToConfirm:(id)a3;
+ (id)disambiguationWithDevicesToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedDevice:(id)a3;
@end

@implementation DeviceResolutionResult

+ (id)successWithResolvedDevice:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B2CC98(v4);

  return v5;
}

+ (id)disambiguationWithDevicesToDisambiguate:(id)a3
{
  type metadata accessor for Device();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B2CCFC(v3);

  return v4;
}

+ (id)confirmationRequiredWithDeviceToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B2CE38(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B2D74C();
}

@end