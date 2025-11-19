@interface ChangeAlarmStatusOperationResolutionResult
+ (id)confirmationRequiredWithChangeAlarmStatusOperationToConfirm:(int64_t)a3;
+ (id)successWithResolvedChangeAlarmStatusOperation:(int64_t)a3;
- (ChangeAlarmStatusOperationResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation ChangeAlarmStatusOperationResolutionResult

+ (id)successWithResolvedChangeAlarmStatusOperation:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C2444(a3);

  return v4;
}

+ (id)confirmationRequiredWithChangeAlarmStatusOperationToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C24D0(a3);

  return v4;
}

- (ChangeAlarmStatusOperationResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_2692C77E0();
  v6 = a4;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for ChangeAlarmStatusOperationResolutionResult();
  v8 = [(ChangeAlarmStatusOperationResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end