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
  v5 = sub_266DA48D8(queryCopy);

  return v5;
}

+ (id)disambiguationWithDeviceQuerysToDisambiguate:(id)disambiguate
{
  type metadata accessor for DeviceQuery();
  v3 = sub_266DAA93C();
  swift_getObjCClassMetadata();
  v4 = sub_266DA498C(v3);

  return v4;
}

+ (id)confirmationRequiredWithDeviceQueryToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_266DA4AF0(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_266DA3968();
  sub_266DAA93C();
  sub_266DA4BF4();
}

@end