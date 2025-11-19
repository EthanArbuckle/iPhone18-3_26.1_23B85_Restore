@interface SiriRemoteTimerTargetResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)confirmationRequiredWithSiriRemoteTimerTargetToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithSiriRemoteTimerTargetsToDisambiguate:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
+ (id)successWithResolvedSiriRemoteTimerTarget:(id)a3;
- (SiriRemoteTimerTargetResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation SiriRemoteTimerTargetResolutionResult

+ (id)successWithResolvedSiriRemoteTimerTarget:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_2693B29A8(v4);

  return v5;
}

+ (id)disambiguationWithSiriRemoteTimerTargetsToDisambiguate:(id)a3
{
  type metadata accessor for SiriRemoteTimerTarget();
  v3 = sub_2693B3820();
  swift_getObjCClassMetadata();
  v4 = sub_2693B2A5C(v3);

  return v4;
}

+ (id)confirmationRequiredWithSiriRemoteTimerTargetToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_2693B2BC0(a3);

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

- (SiriRemoteTimerTargetResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_2693B3720();
  v6 = a4;
  v7 = sub_2693B3710();

  v10.receiver = self;
  v10.super_class = type metadata accessor for SiriRemoteTimerTargetResolutionResult();
  v8 = [(SiriRemoteTimerTargetResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end