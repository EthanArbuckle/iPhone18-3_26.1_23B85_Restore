@interface DeviceContextResolutionResult
+ (id)confirmationRequiredWithDeviceContextToConfirm:(id)a3;
+ (id)disambiguationWithDeviceContextsToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedDeviceContext:(id)a3;
@end

@implementation DeviceContextResolutionResult

+ (id)successWithResolvedDeviceContext:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B2ED2C(v4);

  return v5;
}

+ (id)disambiguationWithDeviceContextsToDisambiguate:(id)a3
{
  type metadata accessor for DeviceContext();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B2EDE0(v3);

  return v4;
}

+ (id)confirmationRequiredWithDeviceContextToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B2EF44(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B2F048();
}

@end