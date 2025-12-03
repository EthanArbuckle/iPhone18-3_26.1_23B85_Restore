@interface CreateAlarmSuccessCodeResolutionResult
+ (id)confirmationRequiredWithCreateAlarmSuccessCodeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedCreateAlarmSuccessCode:(int64_t)code;
- (CreateAlarmSuccessCodeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation CreateAlarmSuccessCodeResolutionResult

+ (id)successWithResolvedCreateAlarmSuccessCode:(int64_t)code
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C2444(code);

  return v4;
}

+ (id)confirmationRequiredWithCreateAlarmSuccessCodeToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C24D0(confirm);

  return v4;
}

- (CreateAlarmSuccessCodeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2692C77E0();
  intentCopy = intent;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for CreateAlarmSuccessCodeResolutionResult();
  v8 = [(CreateAlarmSuccessCodeResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end