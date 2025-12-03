@interface SiriDeviceResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)confirmationRequiredWithSiriDeviceToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithSiriDevicesToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedObject:(id)object;
+ (id)successWithResolvedSiriDevice:(id)device;
- (SiriDeviceResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation SiriDeviceResolutionResult

+ (id)successWithResolvedSiriDevice:(id)device
{
  swift_getObjCClassMetadata();
  deviceCopy = device;
  v5 = sub_2693B1D2C(deviceCopy);

  return v5;
}

+ (id)disambiguationWithSiriDevicesToDisambiguate:(id)disambiguate
{
  type metadata accessor for SiriDevice();
  v3 = sub_2693B3820();
  swift_getObjCClassMetadata();
  v4 = sub_2693B1DE0(v3);

  return v4;
}

+ (id)confirmationRequiredWithSiriDeviceToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_2693B1F44(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  result = sub_2693B3C50();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  result = sub_2693B3C50();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  result = sub_2693B3C50();
  __break(1u);
  return result;
}

- (SiriDeviceResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2693B3720();
  intentCopy = intent;
  v7 = sub_2693B3710();

  v10.receiver = self;
  v10.super_class = type metadata accessor for SiriDeviceResolutionResult();
  v8 = [(SiriDeviceResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end