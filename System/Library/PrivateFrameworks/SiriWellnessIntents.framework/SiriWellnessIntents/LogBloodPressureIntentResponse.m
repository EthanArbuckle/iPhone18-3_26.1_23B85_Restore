@interface LogBloodPressureIntentResponse
- (LogBloodPressureIntentResponse)initWithPropertiesByName:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation LogBloodPressureIntentResponse

- (int64_t)code
{
  MEMORY[0x277D82BE0](self);
  v4 = LogBloodPressureIntentResponse.code.getter();
  MEMORY[0x277D82BD8](self);
  return v4;
}

- (void)setCode:(int64_t)a3
{
  MEMORY[0x277D82BE0](self);
  LogBloodPressureIntentResponse.code.setter(a3);
  MEMORY[0x277D82BD8](self);
}

- (LogBloodPressureIntentResponse)initWithPropertiesByName:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](a3);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return LogBloodPressureIntentResponse.init(propertiesByName:)(v5);
}

@end