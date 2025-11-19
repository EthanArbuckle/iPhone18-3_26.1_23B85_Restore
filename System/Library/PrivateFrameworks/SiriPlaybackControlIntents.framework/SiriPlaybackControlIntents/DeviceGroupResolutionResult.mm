@interface DeviceGroupResolutionResult
+ (id)confirmationRequiredWithDeviceGroupToConfirm:(id)a3;
+ (id)disambiguationWithDeviceGroupsToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedDeviceGroup:(id)a3;
@end

@implementation DeviceGroupResolutionResult

+ (id)successWithResolvedDeviceGroup:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B319C8(v4);

  return v5;
}

+ (id)disambiguationWithDeviceGroupsToDisambiguate:(id)a3
{
  type metadata accessor for DeviceGroup();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B31A2C(v3);

  return v4;
}

+ (id)confirmationRequiredWithDeviceGroupToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B31B24(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B3226C();
}

@end