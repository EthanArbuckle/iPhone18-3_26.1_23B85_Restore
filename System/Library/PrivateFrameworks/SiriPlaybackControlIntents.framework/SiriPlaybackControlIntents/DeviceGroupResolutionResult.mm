@interface DeviceGroupResolutionResult
+ (id)confirmationRequiredWithDeviceGroupToConfirm:(id)confirm;
+ (id)disambiguationWithDeviceGroupsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedDeviceGroup:(id)group;
@end

@implementation DeviceGroupResolutionResult

+ (id)successWithResolvedDeviceGroup:(id)group
{
  swift_getObjCClassMetadata();
  groupCopy = group;
  v5 = sub_268B319C8(groupCopy);

  return v5;
}

+ (id)disambiguationWithDeviceGroupsToDisambiguate:(id)disambiguate
{
  type metadata accessor for DeviceGroup();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B31A2C(v3);

  return v4;
}

+ (id)confirmationRequiredWithDeviceGroupToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_268B31B24(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B3226C();
}

@end