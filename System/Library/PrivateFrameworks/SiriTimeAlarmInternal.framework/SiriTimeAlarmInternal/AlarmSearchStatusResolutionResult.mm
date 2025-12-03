@interface AlarmSearchStatusResolutionResult
+ (id)confirmationRequiredWithAlarmSearchStatusToConfirm:(int64_t)confirm;
+ (id)successWithResolvedAlarmSearchStatus:(int64_t)status;
- (AlarmSearchStatusResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation AlarmSearchStatusResolutionResult

+ (id)successWithResolvedAlarmSearchStatus:(int64_t)status
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C2444(status);

  return v4;
}

+ (id)confirmationRequiredWithAlarmSearchStatusToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C24D0(confirm);

  return v4;
}

- (AlarmSearchStatusResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2692C77E0();
  intentCopy = intent;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for AlarmSearchStatusResolutionResult();
  v8 = [(AlarmSearchStatusResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end