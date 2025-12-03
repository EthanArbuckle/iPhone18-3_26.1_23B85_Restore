@interface DeviceContextResolutionResult
+ (id)confirmationRequiredWithDeviceContextToConfirm:(id)confirm;
+ (id)disambiguationWithDeviceContextsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedDeviceContext:(id)context;
@end

@implementation DeviceContextResolutionResult

+ (id)successWithResolvedDeviceContext:(id)context
{
  swift_getObjCClassMetadata();
  contextCopy = context;
  v5 = sub_268B2ED2C(contextCopy);

  return v5;
}

+ (id)disambiguationWithDeviceContextsToDisambiguate:(id)disambiguate
{
  type metadata accessor for DeviceContext();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B2EDE0(v3);

  return v4;
}

+ (id)confirmationRequiredWithDeviceContextToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_268B2EF44(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B2F048();
}

@end