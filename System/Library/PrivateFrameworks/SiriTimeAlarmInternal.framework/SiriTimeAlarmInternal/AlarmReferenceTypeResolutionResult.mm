@interface AlarmReferenceTypeResolutionResult
+ (id)confirmationRequiredWithAlarmReferenceTypeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedAlarmReferenceType:(int64_t)type;
- (AlarmReferenceTypeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation AlarmReferenceTypeResolutionResult

+ (id)successWithResolvedAlarmReferenceType:(int64_t)type
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C2444(type);

  return v4;
}

+ (id)confirmationRequiredWithAlarmReferenceTypeToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C24D0(confirm);

  return v4;
}

- (AlarmReferenceTypeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2692C77E0();
  intentCopy = intent;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for AlarmReferenceTypeResolutionResult();
  v8 = [(AlarmReferenceTypeResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end