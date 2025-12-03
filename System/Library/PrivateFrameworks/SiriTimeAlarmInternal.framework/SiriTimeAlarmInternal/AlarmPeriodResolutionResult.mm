@interface AlarmPeriodResolutionResult
+ (id)confirmationRequiredWithAlarmPeriodToConfirm:(int64_t)confirm;
+ (id)successWithResolvedAlarmPeriod:(int64_t)period;
- (AlarmPeriodResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation AlarmPeriodResolutionResult

+ (id)successWithResolvedAlarmPeriod:(int64_t)period
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C2444(period);

  return v4;
}

+ (id)confirmationRequiredWithAlarmPeriodToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C24D0(confirm);

  return v4;
}

- (AlarmPeriodResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2692C77E0();
  intentCopy = intent;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for AlarmPeriodResolutionResult();
  v8 = [(AlarmPeriodResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end