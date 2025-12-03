@interface SiriRemoteTimerTargetResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)confirmationRequiredWithSiriRemoteTimerTargetToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithSiriRemoteTimerTargetsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedObject:(id)object;
+ (id)successWithResolvedSiriRemoteTimerTarget:(id)target;
- (SiriRemoteTimerTargetResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation SiriRemoteTimerTargetResolutionResult

+ (id)successWithResolvedSiriRemoteTimerTarget:(id)target
{
  swift_getObjCClassMetadata();
  targetCopy = target;
  v5 = sub_2693B29A8(targetCopy);

  return v5;
}

+ (id)disambiguationWithSiriRemoteTimerTargetsToDisambiguate:(id)disambiguate
{
  type metadata accessor for SiriRemoteTimerTarget();
  v3 = sub_2693B3820();
  swift_getObjCClassMetadata();
  v4 = sub_2693B2A5C(v3);

  return v4;
}

+ (id)confirmationRequiredWithSiriRemoteTimerTargetToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_2693B2BC0(confirm);

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

- (SiriRemoteTimerTargetResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2693B3720();
  intentCopy = intent;
  v7 = sub_2693B3710();

  v10.receiver = self;
  v10.super_class = type metadata accessor for SiriRemoteTimerTargetResolutionResult();
  v8 = [(SiriRemoteTimerTargetResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end