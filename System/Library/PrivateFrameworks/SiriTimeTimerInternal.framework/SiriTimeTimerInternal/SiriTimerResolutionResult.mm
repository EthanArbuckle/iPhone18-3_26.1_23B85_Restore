@interface SiriTimerResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)confirmationRequiredWithSiriTimerToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithSiriTimersToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedObject:(id)object;
+ (id)successWithResolvedSiriTimer:(id)timer;
- (SiriTimerResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation SiriTimerResolutionResult

+ (id)successWithResolvedSiriTimer:(id)timer
{
  swift_getObjCClassMetadata();
  timerCopy = timer;
  v5 = sub_2693B1178(timerCopy);

  return v5;
}

+ (id)disambiguationWithSiriTimersToDisambiguate:(id)disambiguate
{
  type metadata accessor for SiriTimer();
  v3 = sub_2693B3820();
  swift_getObjCClassMetadata();
  v4 = sub_2693B122C(v3);

  return v4;
}

+ (id)confirmationRequiredWithSiriTimerToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_2693B13DC(confirm);

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

- (SiriTimerResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2693B3720();
  intentCopy = intent;
  v7 = sub_2693B3710();

  v10.receiver = self;
  v10.super_class = type metadata accessor for SiriTimerResolutionResult();
  v8 = [(SiriTimerResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end