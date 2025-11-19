@interface SiriDeviceResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)confirmationRequiredWithSiriDeviceToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithSiriDevicesToDisambiguate:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
+ (id)successWithResolvedSiriDevice:(id)a3;
- (SiriDeviceResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation SiriDeviceResolutionResult

+ (id)successWithResolvedSiriDevice:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_2693B1D2C(v4);

  return v5;
}

+ (id)disambiguationWithSiriDevicesToDisambiguate:(id)a3
{
  type metadata accessor for SiriDevice();
  v3 = sub_2693B3820();
  swift_getObjCClassMetadata();
  v4 = sub_2693B1DE0(v3);

  return v4;
}

+ (id)confirmationRequiredWithSiriDeviceToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_2693B1F44(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  result = sub_2693B3C50();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  result = sub_2693B3C50();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  result = sub_2693B3C50();
  __break(1u);
  return result;
}

- (SiriDeviceResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_2693B3720();
  v6 = a4;
  v7 = sub_2693B3710();

  v10.receiver = self;
  v10.super_class = type metadata accessor for SiriDeviceResolutionResult();
  v8 = [(SiriDeviceResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end