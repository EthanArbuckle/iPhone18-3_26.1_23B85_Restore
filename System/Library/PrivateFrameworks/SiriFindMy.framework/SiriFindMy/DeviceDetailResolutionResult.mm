@interface DeviceDetailResolutionResult
+ (id)confirmationRequiredWithDeviceDetailToConfirm:(id)a3;
+ (id)disambiguationWithDeviceDetailsToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedDeviceDetail:(id)a3;
@end

@implementation DeviceDetailResolutionResult

+ (id)successWithResolvedDeviceDetail:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_266DA380C(v4);

  return v5;
}

+ (id)disambiguationWithDeviceDetailsToDisambiguate:(id)a3
{
  type metadata accessor for DeviceDetail();
  v3 = sub_266DAA93C();
  swift_getObjCClassMetadata();
  v4 = sub_266DA3870(v3);

  return v4;
}

+ (id)confirmationRequiredWithDeviceDetailToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_266DA39AC(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_266DA3968();
  sub_266DAA93C();
  sub_266DA4080();
}

@end