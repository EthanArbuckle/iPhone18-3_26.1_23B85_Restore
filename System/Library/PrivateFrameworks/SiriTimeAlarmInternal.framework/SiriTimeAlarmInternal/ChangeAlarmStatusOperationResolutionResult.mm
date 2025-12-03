@interface ChangeAlarmStatusOperationResolutionResult
+ (id)confirmationRequiredWithChangeAlarmStatusOperationToConfirm:(int64_t)confirm;
+ (id)successWithResolvedChangeAlarmStatusOperation:(int64_t)operation;
- (ChangeAlarmStatusOperationResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation ChangeAlarmStatusOperationResolutionResult

+ (id)successWithResolvedChangeAlarmStatusOperation:(int64_t)operation
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C2444(operation);

  return v4;
}

+ (id)confirmationRequiredWithChangeAlarmStatusOperationToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C24D0(confirm);

  return v4;
}

- (ChangeAlarmStatusOperationResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2692C77E0();
  intentCopy = intent;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for ChangeAlarmStatusOperationResolutionResult();
  v8 = [(ChangeAlarmStatusOperationResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end