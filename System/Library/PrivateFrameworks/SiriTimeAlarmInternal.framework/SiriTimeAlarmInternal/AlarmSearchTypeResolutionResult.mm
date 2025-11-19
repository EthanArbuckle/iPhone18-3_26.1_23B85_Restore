@interface AlarmSearchTypeResolutionResult
+ (id)confirmationRequiredWithAlarmSearchTypeToConfirm:(int64_t)a3;
+ (id)successWithResolvedAlarmSearchType:(int64_t)a3;
- (AlarmSearchTypeResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation AlarmSearchTypeResolutionResult

+ (id)successWithResolvedAlarmSearchType:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C2444(a3);

  return v4;
}

+ (id)confirmationRequiredWithAlarmSearchTypeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_2692C24D0(a3);

  return v4;
}

- (AlarmSearchTypeResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_2692C77E0();
  v6 = a4;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for AlarmSearchTypeResolutionResult();
  v8 = [(AlarmSearchTypeResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end