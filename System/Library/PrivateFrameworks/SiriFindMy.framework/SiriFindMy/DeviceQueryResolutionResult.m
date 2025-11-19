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
  v5 = sub_266DA48D8(v4);

  return v5;
}

+ (id)disambiguationWithDeviceQuerysToDisambiguate:(id)a3
{
  type metadata accessor for DeviceQuery();
  v3 = sub_266DAA93C();
  swift_getObjCClassMetadata();
  v4 = sub_266DA498C(v3);

  return v4;
}

+ (id)confirmationRequiredWithDeviceQueryToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_266DA4AF0(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_266DA3968();
  sub_266DAA93C();
  sub_266DA4BF4();
}

@end