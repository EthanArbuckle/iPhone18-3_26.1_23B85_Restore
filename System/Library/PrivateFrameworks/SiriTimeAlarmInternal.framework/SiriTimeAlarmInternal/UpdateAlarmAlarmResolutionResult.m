@interface UpdateAlarmAlarmResolutionResult
+ (id)unsupportedForReason:(int64_t)a3;
- (UpdateAlarmAlarmResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation UpdateAlarmAlarmResolutionResult

+ (id)unsupportedForReason:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_2692BE64C(a3);

  return v4;
}

- (UpdateAlarmAlarmResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_2692C77E0();
  v6 = a4;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for UpdateAlarmAlarmResolutionResult();
  v8 = [(SiriAlarmResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end