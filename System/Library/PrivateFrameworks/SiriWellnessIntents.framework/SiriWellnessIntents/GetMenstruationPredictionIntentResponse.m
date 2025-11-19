@interface GetMenstruationPredictionIntentResponse
- (GetMenstruationPredictionIntentResponse)initWithPropertiesByName:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation GetMenstruationPredictionIntentResponse

- (int64_t)code
{
  MEMORY[0x277D82BE0](self);
  MenstruationPredictionIntent = GetMenstruationPredictionIntentResponse.code.getter();
  MEMORY[0x277D82BD8](self);
  return MenstruationPredictionIntent;
}

- (void)setCode:(int64_t)a3
{
  MEMORY[0x277D82BE0](self);
  GetMenstruationPredictionIntentResponse.code.setter(a3);
  MEMORY[0x277D82BD8](self);
}

- (GetMenstruationPredictionIntentResponse)initWithPropertiesByName:(id)a3
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

  return GetMenstruationPredictionIntentResponse.init(propertiesByName:)(v5);
}

@end