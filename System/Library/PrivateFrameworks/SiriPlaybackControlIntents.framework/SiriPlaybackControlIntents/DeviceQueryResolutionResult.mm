@interface DeviceQueryResolutionResult
+ (id)confirmationRequiredWithDeviceQueryToConfirm:(id)confirm;
+ (id)disambiguationWithDeviceQuerysToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedDeviceQuery:(id)query;
@end

@implementation DeviceQueryResolutionResult

+ (id)successWithResolvedDeviceQuery:(id)query
{
  swift_getObjCClassMetadata();
  queryCopy = query;
  v5 = sub_268B304EC(queryCopy);

  return v5;
}

+ (id)disambiguationWithDeviceQuerysToDisambiguate:(id)disambiguate
{
  type metadata accessor for DeviceQuery();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B305A0(v3);

  return v4;
}

+ (id)confirmationRequiredWithDeviceQueryToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_268B30704(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B30808();
}

@end