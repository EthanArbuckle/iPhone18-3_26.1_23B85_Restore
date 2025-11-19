@interface DeleteAlarmAlarmsResolutionResult
+ (id)unsupportedForReason:(int64_t)a3;
- (DeleteAlarmAlarmsResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation DeleteAlarmAlarmsResolutionResult

+ (id)unsupportedForReason:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_2692BE64C(a3);

  return v4;
}

- (DeleteAlarmAlarmsResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_2692C77E0();
  v6 = a4;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for DeleteAlarmAlarmsResolutionResult();
  v8 = [(SiriAlarmResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end