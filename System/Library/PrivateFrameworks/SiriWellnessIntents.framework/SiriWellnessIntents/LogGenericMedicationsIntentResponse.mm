@interface LogGenericMedicationsIntentResponse
- (LogGenericMedicationsIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation LogGenericMedicationsIntentResponse

- (int64_t)code
{
  MEMORY[0x277D82BE0](self);
  v4 = LogGenericMedicationsIntentResponse.code.getter();
  MEMORY[0x277D82BD8](self);
  return v4;
}

- (void)setCode:(int64_t)code
{
  MEMORY[0x277D82BE0](self);
  LogGenericMedicationsIntentResponse.code.setter(code);
  MEMORY[0x277D82BD8](self);
}

- (LogGenericMedicationsIntentResponse)initWithPropertiesByName:(id)name
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

  return LogGenericMedicationsIntentResponse.init(propertiesByName:)(v5);
}

@end