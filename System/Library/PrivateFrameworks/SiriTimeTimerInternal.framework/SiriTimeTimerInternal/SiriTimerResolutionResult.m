@interface SiriTimerResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)confirmationRequiredWithSiriTimerToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithSiriTimersToDisambiguate:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
+ (id)successWithResolvedSiriTimer:(id)a3;
- (SiriTimerResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation SiriTimerResolutionResult

+ (id)successWithResolvedSiriTimer:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_2693B1178(v4);

  return v5;
}

+ (id)disambiguationWithSiriTimersToDisambiguate:(id)a3
{
  type metadata accessor for SiriTimer();
  v3 = sub_2693B3820();
  swift_getObjCClassMetadata();
  v4 = sub_2693B122C(v3);

  return v4;
}

+ (id)confirmationRequiredWithSiriTimerToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_2693B13DC(a3);

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

- (SiriTimerResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_2693B3720();
  v6 = a4;
  v7 = sub_2693B3710();

  v10.receiver = self;
  v10.super_class = type metadata accessor for SiriTimerResolutionResult();
  v8 = [(SiriTimerResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end