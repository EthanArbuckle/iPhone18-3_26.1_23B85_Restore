@interface SiriAlarmResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)confirmationRequiredWithSiriAlarmToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithSiriAlarmsToDisambiguate:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
+ (id)successWithResolvedSiriAlarm:(id)a3;
- (SiriAlarmResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation SiriAlarmResolutionResult

+ (id)successWithResolvedSiriAlarm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_2692C42D8(v4);

  return v5;
}

+ (id)disambiguationWithSiriAlarmsToDisambiguate:(id)a3
{
  type metadata accessor for SiriAlarm();
  v3 = sub_2692C7930();
  swift_getObjCClassMetadata();
  v4 = sub_2692C433C(v3);

  return v4;
}

+ (id)confirmationRequiredWithSiriAlarmToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_2692C4480(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  result = sub_2692C7C40();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  result = sub_2692C7C40();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  result = sub_2692C7C40();
  __break(1u);
  return result;
}

- (SiriAlarmResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_2692C77E0();
  v6 = a4;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for SiriAlarmResolutionResult();
  v8 = [(SiriAlarmResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end