@interface AlarmRepeatScheduleResolutionResult
+ (id)confirmationRequiredWithAlarmRepeatScheduleToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithAlarmRepeatSchedulesToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedAlarmRepeatSchedule:(id)schedule;
+ (id)successWithResolvedObject:(id)object;
- (AlarmRepeatScheduleResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation AlarmRepeatScheduleResolutionResult

+ (id)successWithResolvedAlarmRepeatSchedule:(id)schedule
{
  swift_getObjCClassMetadata();
  scheduleCopy = schedule;
  v5 = sub_2692C6B1C(scheduleCopy);

  return v5;
}

+ (id)disambiguationWithAlarmRepeatSchedulesToDisambiguate:(id)disambiguate
{
  type metadata accessor for AlarmRepeatSchedule();
  v3 = sub_2692C7930();
  swift_getObjCClassMetadata();
  v4 = sub_2692C6BD0(v3);

  return v4;
}

+ (id)confirmationRequiredWithAlarmRepeatScheduleToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_2692C6D34(confirm);

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

- (AlarmRepeatScheduleResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2692C77E0();
  intentCopy = intent;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for AlarmRepeatScheduleResolutionResult();
  v8 = [(AlarmRepeatScheduleResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end