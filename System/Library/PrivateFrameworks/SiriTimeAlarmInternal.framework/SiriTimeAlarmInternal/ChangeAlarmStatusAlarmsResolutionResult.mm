@interface ChangeAlarmStatusAlarmsResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
- (ChangeAlarmStatusAlarmsResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation ChangeAlarmStatusAlarmsResolutionResult

+ (id)unsupportedForReason:(int64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = sub_2692BE64C(reason);

  return v4;
}

- (ChangeAlarmStatusAlarmsResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2692C77E0();
  intentCopy = intent;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
  v8 = [(SiriAlarmResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end