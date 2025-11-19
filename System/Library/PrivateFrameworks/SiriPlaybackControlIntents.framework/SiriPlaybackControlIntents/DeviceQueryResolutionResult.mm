@interface DeviceQueryResolutionResult
+ (id)confirmationRequiredWithDeviceQueryToConfirm:(id)a3;
+ (id)disambiguationWithDeviceQuerysToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedDeviceQuery:(id)a3;
@end

@implementation DeviceQueryResolutionResult

+ (id)successWithResolvedDeviceQuery:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B304EC(v4);

  return v5;
}

+ (id)disambiguationWithDeviceQuerysToDisambiguate:(id)a3
{
  type metadata accessor for DeviceQuery();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B305A0(v3);

  return v4;
}

+ (id)confirmationRequiredWithDeviceQueryToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B30704(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B30808();
}

@end