@interface RepeatScheduleResolutionResult
+ (id)confirmationRequiredWithRepeatScheduleToConfirm:(int64_t)confirm;
+ (id)successWithResolvedRepeatSchedule:(int64_t)schedule;
- (RepeatScheduleResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation RepeatScheduleResolutionResult

+ (id)successWithResolvedRepeatSchedule:(int64_t)schedule
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C2444(schedule);

  return v4;
}

+ (id)confirmationRequiredWithRepeatScheduleToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C24D0(confirm);

  return v4;
}

- (RepeatScheduleResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2692C77E0();
  intentCopy = intent;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for RepeatScheduleResolutionResult();
  v8 = [(RepeatScheduleResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end