@interface UpdateAlarmAlarmResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
- (UpdateAlarmAlarmResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation UpdateAlarmAlarmResolutionResult

+ (id)unsupportedForReason:(int64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = sub_2692BE64C(reason);

  return v4;
}

- (UpdateAlarmAlarmResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2692C77E0();
  intentCopy = intent;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for UpdateAlarmAlarmResolutionResult();
  v8 = [(SiriAlarmResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end