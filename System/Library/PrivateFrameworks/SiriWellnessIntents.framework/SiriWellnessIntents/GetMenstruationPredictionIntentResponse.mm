@interface GetMenstruationPredictionIntentResponse
- (GetMenstruationPredictionIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation GetMenstruationPredictionIntentResponse

- (int64_t)code
{
  MEMORY[0x277D82BE0](self);
  MenstruationPredictionIntent = GetMenstruationPredictionIntentResponse.code.getter();
  MEMORY[0x277D82BD8](self);
  return MenstruationPredictionIntent;
}

- (void)setCode:(int64_t)code
{
  MEMORY[0x277D82BE0](self);
  GetMenstruationPredictionIntentResponse.code.setter(code);
  MEMORY[0x277D82BD8](self);
}

- (GetMenstruationPredictionIntentResponse)initWithPropertiesByName:(id)name
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

  return GetMenstruationPredictionIntentResponse.init(propertiesByName:)(v5);
}

@end