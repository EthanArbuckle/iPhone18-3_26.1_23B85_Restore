@interface SiriTimerStateResolutionResult
+ (id)confirmationRequiredWithSiriTimerStateToConfirm:(int64_t)confirm;
+ (id)successWithResolvedSiriTimerState:(int64_t)state;
- (SiriTimerStateResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation SiriTimerStateResolutionResult

+ (id)successWithResolvedSiriTimerState:(int64_t)state
{
  swift_getObjCClassMetadata();
  v4 = sub_2693B0080(state);

  return v4;
}

+ (id)confirmationRequiredWithSiriTimerStateToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_2693B010C(confirm);

  return v4;
}

- (SiriTimerStateResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2693B3720();
  intentCopy = intent;
  v7 = sub_2693B3710();

  v10.receiver = self;
  v10.super_class = type metadata accessor for SiriTimerStateResolutionResult();
  v8 = [(SiriTimerStateResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end