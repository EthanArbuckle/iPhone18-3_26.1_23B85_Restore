@interface SiriAlarmResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)confirmationRequiredWithSiriAlarmToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithSiriAlarmsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedObject:(id)object;
+ (id)successWithResolvedSiriAlarm:(id)alarm;
- (SiriAlarmResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation SiriAlarmResolutionResult

+ (id)successWithResolvedSiriAlarm:(id)alarm
{
  swift_getObjCClassMetadata();
  alarmCopy = alarm;
  v5 = sub_2692C42D8(alarmCopy);

  return v5;
}

+ (id)disambiguationWithSiriAlarmsToDisambiguate:(id)disambiguate
{
  type metadata accessor for SiriAlarm();
  v3 = sub_2692C7930();
  swift_getObjCClassMetadata();
  v4 = sub_2692C433C(v3);

  return v4;
}

+ (id)confirmationRequiredWithSiriAlarmToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_2692C4480(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  result = sub_2692C7C40();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  result = sub_2692C7C40();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  result = sub_2692C7C40();
  __break(1u);
  return result;
}

- (SiriAlarmResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2692C77E0();
  intentCopy = intent;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for SiriAlarmResolutionResult();
  v8 = [(SiriAlarmResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end