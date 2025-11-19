@interface AlarmRepeatScheduleResolutionResult
+ (id)confirmationRequiredWithAlarmRepeatScheduleToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithAlarmRepeatSchedulesToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedAlarmRepeatSchedule:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
- (AlarmRepeatScheduleResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation AlarmRepeatScheduleResolutionResult

+ (id)successWithResolvedAlarmRepeatSchedule:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_2692C6B1C(v4);

  return v5;
}

+ (id)disambiguationWithAlarmRepeatSchedulesToDisambiguate:(id)a3
{
  type metadata accessor for AlarmRepeatSchedule();
  v3 = sub_2692C7930();
  swift_getObjCClassMetadata();
  v4 = sub_2692C6BD0(v3);

  return v4;
}

+ (id)confirmationRequiredWithAlarmRepeatScheduleToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_2692C6D34(a3);

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

- (AlarmRepeatScheduleResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_2692C77E0();
  v6 = a4;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for AlarmRepeatScheduleResolutionResult();
  v8 = [(AlarmRepeatScheduleResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end