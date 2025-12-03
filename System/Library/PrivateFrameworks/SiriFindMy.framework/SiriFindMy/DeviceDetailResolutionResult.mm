@interface DeviceDetailResolutionResult
+ (id)confirmationRequiredWithDeviceDetailToConfirm:(id)confirm;
+ (id)disambiguationWithDeviceDetailsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedDeviceDetail:(id)detail;
@end

@implementation DeviceDetailResolutionResult

+ (id)successWithResolvedDeviceDetail:(id)detail
{
  swift_getObjCClassMetadata();
  detailCopy = detail;
  v5 = sub_266DA380C(detailCopy);

  return v5;
}

+ (id)disambiguationWithDeviceDetailsToDisambiguate:(id)disambiguate
{
  type metadata accessor for DeviceDetail();
  v3 = sub_266DAA93C();
  swift_getObjCClassMetadata();
  v4 = sub_266DA3870(v3);

  return v4;
}

+ (id)confirmationRequiredWithDeviceDetailToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_266DA39AC(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_266DA3968();
  sub_266DAA93C();
  sub_266DA4080();
}

@end