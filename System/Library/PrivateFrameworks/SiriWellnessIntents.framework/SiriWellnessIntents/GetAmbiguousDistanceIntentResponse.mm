@interface GetAmbiguousDistanceIntentResponse
- (GetAmbiguousDistanceIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation GetAmbiguousDistanceIntentResponse

- (int64_t)code
{
  MEMORY[0x277D82BE0](self);
  AmbiguousDistanceIntent = GetAmbiguousDistanceIntentResponse.code.getter();
  MEMORY[0x277D82BD8](self);
  return AmbiguousDistanceIntent;
}

- (void)setCode:(int64_t)code
{
  MEMORY[0x277D82BE0](self);
  GetAmbiguousDistanceIntentResponse.code.setter(code);
  MEMORY[0x277D82BD8](self);
}

- (GetAmbiguousDistanceIntentResponse)initWithPropertiesByName:(id)name
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

  return GetAmbiguousDistanceIntentResponse.init(propertiesByName:)(v5);
}

@end