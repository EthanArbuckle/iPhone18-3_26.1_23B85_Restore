@interface GetSleepAnalysisIntentResponse
- (GetSleepAnalysisIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation GetSleepAnalysisIntentResponse

- (int64_t)code
{
  MEMORY[0x277D82BE0](self);
  SleepAnalysisIntent = GetSleepAnalysisIntentResponse.code.getter();
  MEMORY[0x277D82BD8](self);
  return SleepAnalysisIntent;
}

- (void)setCode:(int64_t)code
{
  MEMORY[0x277D82BE0](self);
  GetSleepAnalysisIntentResponse.code.setter(code);
  MEMORY[0x277D82BD8](self);
}

- (GetSleepAnalysisIntentResponse)initWithPropertiesByName:(id)name
{
  MEMORY[0x277D82BE0](name);
  if (name)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](name);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return GetSleepAnalysisIntentResponse.init(propertiesByName:)(v5);
}

@end