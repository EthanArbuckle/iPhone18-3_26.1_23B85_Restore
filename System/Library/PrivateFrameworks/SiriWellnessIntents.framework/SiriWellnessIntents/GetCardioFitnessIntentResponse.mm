@interface GetCardioFitnessIntentResponse
- (GetCardioFitnessIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation GetCardioFitnessIntentResponse

- (int64_t)code
{
  MEMORY[0x277D82BE0](self);
  CardioFitnessIntent = GetCardioFitnessIntentResponse.code.getter();
  MEMORY[0x277D82BD8](self);
  return CardioFitnessIntent;
}

- (void)setCode:(int64_t)code
{
  MEMORY[0x277D82BE0](self);
  GetCardioFitnessIntentResponse.code.setter(code);
  MEMORY[0x277D82BD8](self);
}

- (GetCardioFitnessIntentResponse)initWithPropertiesByName:(id)name
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

  return GetCardioFitnessIntentResponse.init(propertiesByName:)(v5);
}

@end