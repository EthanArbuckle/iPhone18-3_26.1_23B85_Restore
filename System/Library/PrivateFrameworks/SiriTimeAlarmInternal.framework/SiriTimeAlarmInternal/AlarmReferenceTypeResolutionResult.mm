@interface AlarmReferenceTypeResolutionResult
+ (id)confirmationRequiredWithAlarmReferenceTypeToConfirm:(int64_t)a3;
+ (id)successWithResolvedAlarmReferenceType:(int64_t)a3;
- (AlarmReferenceTypeResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation AlarmReferenceTypeResolutionResult

+ (id)successWithResolvedAlarmReferenceType:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C2444(a3);

  return v4;
}

+ (id)confirmationRequiredWithAlarmReferenceTypeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C24D0(a3);

  return v4;
}

- (AlarmReferenceTypeResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_2692C77E0();
  v6 = a4;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for AlarmReferenceTypeResolutionResult();
  v8 = [(AlarmReferenceTypeResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end