@interface GetHealthQuantityIntentResponse
- (GetHealthQuantityIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation GetHealthQuantityIntentResponse

- (int64_t)code
{
  MEMORY[0x277D82BE0](self);
  HealthQuantityIntent = GetHealthQuantityIntentResponse.code.getter();
  MEMORY[0x277D82BD8](self);
  return HealthQuantityIntent;
}

- (void)setCode:(int64_t)code
{
  MEMORY[0x277D82BE0](self);
  GetHealthQuantityIntentResponse.code.setter(code);
  MEMORY[0x277D82BD8](self);
}

- (GetHealthQuantityIntentResponse)initWithPropertiesByName:(id)name
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

  return GetHealthQuantityIntentResponse.init(propertiesByName:)(v5);
}

@end