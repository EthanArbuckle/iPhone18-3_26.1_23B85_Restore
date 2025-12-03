@interface AlarmSearchTypeResolutionResult
+ (id)confirmationRequiredWithAlarmSearchTypeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedAlarmSearchType:(int64_t)type;
- (AlarmSearchTypeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation AlarmSearchTypeResolutionResult

+ (id)successWithResolvedAlarmSearchType:(int64_t)type
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C2444(type);

  return v4;
}

+ (id)confirmationRequiredWithAlarmSearchTypeToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C24D0(confirm);

  return v4;
}

- (AlarmSearchTypeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2692C77E0();
  intentCopy = intent;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for AlarmSearchTypeResolutionResult();
  v8 = [(AlarmSearchTypeResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end