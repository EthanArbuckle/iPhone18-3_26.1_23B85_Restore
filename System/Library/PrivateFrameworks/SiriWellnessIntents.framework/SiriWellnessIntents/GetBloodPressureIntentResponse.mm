@interface GetBloodPressureIntentResponse
- (GetBloodPressureIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation GetBloodPressureIntentResponse

- (int64_t)code
{
  MEMORY[0x277D82BE0](self);
  BloodPressureIntent = GetBloodPressureIntentResponse.code.getter();
  MEMORY[0x277D82BD8](self);
  return BloodPressureIntent;
}

- (void)setCode:(int64_t)code
{
  MEMORY[0x277D82BE0](self);
  GetBloodPressureIntentResponse.code.setter(code);
  MEMORY[0x277D82BD8](self);
}

- (GetBloodPressureIntentResponse)initWithPropertiesByName:(id)name
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

  return GetBloodPressureIntentResponse.init(propertiesByName:)(v5);
}

@end